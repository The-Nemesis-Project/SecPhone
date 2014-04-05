.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 603
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 604
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 920
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 922
    .local v0, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const-string v1, "cnap_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 923
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 924
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    .line 925
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 931
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 934
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    #setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1902(Lcom/android/phone/NotificationMgr;I)I

    .line 944
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 946
    return-object v0

    .line 935
    :cond_1
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 936
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 937
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    #setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1902(Lcom/android/phone/NotificationMgr;I)I

    goto :goto_0

    .line 938
    :cond_2
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 940
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    #setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1902(Lcom/android/phone/NotificationMgr;I)I

    goto :goto_0
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 9
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object v8, p4

    .line 911
    check-cast v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 912
    .local v8, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v6, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 913
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 28
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 625
    packed-switch p1, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 627
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "call log query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 630
    if-eqz p3, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$802(Lcom/android/phone/NotificationMgr;I)I

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call log cursor count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 643
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$902(Z)Z

    .line 646
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v4

    .line 651
    .local v4, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v5, "query contacts for number: "

    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "null"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1000(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v2

    const/4 v3, -0x2

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number"

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing call log cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 659
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 651
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_3
    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_1

    .line 663
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "contact query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 666
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    .line 667
    check-cast v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 669
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/16 v24, 0x0

    .line 670
    .local v24, personUri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 673
    .local v21, name:Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 674
    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 676
    :cond_4
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 678
    .local v25, person_id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found for phone: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 681
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 684
    .end local v21           #name:Ljava/lang/String;
    .end local v25           #person_id:J
    :cond_5
    if-eqz v24, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 702
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing contact cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 703
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 694
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "Failed to find Uri for obtaining photo. Just send notification without it."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v5 .. v12}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_2

    .line 708
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .end local v24           #personUri:Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 710
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v22, p2

    .line 711
    check-cast v22, Landroid/app/Notification$InboxStyle;

    .line 713
    .local v22, notiInBox:Landroid/app/Notification$InboxStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 715
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 717
    :cond_7
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 718
    .local v19, lineString:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 719
    .restart local v21       #name:Ljava/lang/String;
    if-nez v21, :cond_8

    const-string v2, "feature_cnam"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 720
    const-string v2, "fname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 721
    .local v14, firstName:Ljava/lang/String;
    const-string v2, "lname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 722
    .local v18, lastName:Ljava/lang/String;
    if-eqz v14, :cond_e

    if-nez v18, :cond_e

    .line 723
    move-object/from16 v21, v14

    .line 737
    .end local v14           #firstName:Ljava/lang/String;
    .end local v18           #lastName:Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v2, "dormant_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 740
    .local v13, dormant:I
    const-string v2, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "-4"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 742
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 753
    :cond_a
    :goto_4
    const/4 v2, 0x1

    if-ne v13, v2, :cond_b

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0907be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 757
    :cond_b
    if-eqz v19, :cond_c

    .line 758
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 760
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 763
    .end local v13           #dormant:I
    .end local v19           #lineString:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v22 .. v22}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1200(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    .line 765
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 725
    .restart local v14       #firstName:Ljava/lang/String;
    .restart local v18       #lastName:Ljava/lang/String;
    .restart local v19       #lineString:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    :cond_e
    if-nez v14, :cond_f

    if-eqz v18, :cond_f

    .line 726
    move-object/from16 v21, v18

    goto :goto_3

    .line 728
    :cond_f
    if-eqz v14, :cond_10

    if-eqz v18, :cond_10

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 732
    :cond_10
    const-string v2, "bname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 733
    if-nez v21, :cond_8

    .line 734
    const-string v2, "cnap_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 743
    .end local v14           #firstName:Ljava/lang/String;
    .end local v18           #lastName:Ljava/lang/String;
    .restart local v13       #dormant:I
    :cond_11
    const-string v2, "-2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 745
    :cond_12
    const-string v2, "-3"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 747
    :cond_13
    if-eqz v21, :cond_14

    .line 748
    move-object/from16 v19, v21

    goto/16 :goto_4

    .line 749
    :cond_14
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v19

    #calls: Lcom/android/phone/NotificationMgr;->getformattedNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 770
    .end local v13           #dormant:I
    .end local v19           #lineString:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #notiInBox:Landroid/app/Notification$InboxStyle;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL_ID_TOKEN complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 772
    if-eqz p3, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL_ID query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 774
    const/16 v16, 0x0

    .line 775
    .local v16, idx:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 776
    .local v20, missedCallogArray:[I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 778
    :goto_5
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 779
    .local v15, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL_ID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 780
    add-int/lit8 v17, v16, 0x1

    .end local v16           #idx:I
    .local v17, idx:I
    aput v15, v20, v16

    .line 781
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_27

    move/from16 v16, v17

    .line 783
    .end local v15           #id:I
    .end local v17           #idx:I
    .restart local v16       #idx:I
    :cond_15
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 785
    if-eqz v20, :cond_16

    move-object/from16 v0, v20

    array-length v2, v0

    if-eqz v2, :cond_16

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr;->sendMissedCallLogID([I)V

    goto/16 :goto_0

    .line 792
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL_ID_TOKEN. Query result is None!"

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 798
    .end local v16           #idx:I
    .end local v20           #missedCallogArray:[I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_TOKEN query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 800
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v22, p2

    .line 801
    check-cast v22, Landroid/app/Notification$InboxStyle;

    .line 802
    .restart local v22       #notiInBox:Landroid/app/Notification$InboxStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_REJECTED_CALL_TOKEN query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 803
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 805
    :cond_17
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 806
    .restart local v19       #lineString:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 807
    .restart local v21       #name:Ljava/lang/String;
    const-string v2, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "-4"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 809
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 817
    :cond_19
    :goto_6
    if-eqz v19, :cond_1a

    .line 818
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 820
    :cond_1a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_17

    .line 822
    .end local v19           #lineString:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v22 .. v22}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->registerAutoRejectedCallNotification(Landroid/app/Notification;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1300(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    .line 823
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 810
    .restart local v19       #lineString:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    :cond_1c
    const-string v2, "-2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 812
    :cond_1d
    const-string v2, "-3"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 814
    :cond_1e
    if-eqz v21, :cond_19

    .line 815
    move-object/from16 v19, v21

    goto :goto_6

    .line 827
    .end local v19           #lineString:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #notiInBox:Landroid/app/Notification$InboxStyle;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_LOG_TOKEN query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 829
    if-eqz p3, :cond_0

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1402(Lcom/android/phone/NotificationMgr;I)I

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_REJECTED_CALL_LOG_TOKEN mNumberAutoRejectedCalls : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$1400(Lcom/android/phone/NotificationMgr;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1400(Lcom/android/phone/NotificationMgr;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1f

    .line 835
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1502(Z)Z

    .line 837
    :cond_1f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v4

    .line 841
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v5, "AUTO_REJECTED_CALL_LOG_TOKEN query contacts for number: "

    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v2, :cond_21

    const-string v2, "null"

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1000(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v2

    const/4 v3, -0x8

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number"

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_LOG_TOKEN closing call log cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 847
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 841
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_21
    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_7

    .line 853
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :pswitch_6
    if-eqz p3, :cond_0

    .line 854
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 857
    .local v27, preNumberString:Ljava/lang/String;
    :cond_22
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 858
    .local v23, numberString:Ljava/lang/String;
    if-eqz v23, :cond_23

    .line 859
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/NotificationMgr;->isDuplicateAutoRejectedNumber:Z
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1602(Lcom/android/phone/NotificationMgr;Z)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v23

    #setter for: Lcom/android/phone/NotificationMgr;->DuplicateAutoRejectedNumber:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/NotificationMgr;->access$1702(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    :cond_23
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_0

    .line 863
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/NotificationMgr;->isDuplicateAutoRejectedNumber:Z
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1602(Lcom/android/phone/NotificationMgr;Z)Z

    goto/16 :goto_0

    .line 872
    .end local v23           #numberString:Ljava/lang/String;
    .end local v27           #preNumberString:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "contact query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 874
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    .line 875
    check-cast v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 877
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/16 v24, 0x0

    .line 878
    .restart local v24       #personUri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 879
    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 881
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 883
    .restart local v25       #person_id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found for phone: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 886
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 888
    .end local v25           #person_id:J
    :cond_25
    if-eqz v24, :cond_26

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 898
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing contact cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 899
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 894
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "Failed to find Uri for obtaining photo. Just send notification without it."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v5 .. v12}, Lcom/android/phone/NotificationMgr;->notifyAutoRejectedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_8

    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .end local v24           #personUri:Landroid/net/Uri;
    .restart local v15       #id:I
    .restart local v17       #idx:I
    .restart local v20       #missedCallogArray:[I
    :cond_27
    move/from16 v16, v17

    .end local v17           #idx:I
    .restart local v16       #idx:I
    goto/16 :goto_5

    .line 625
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
