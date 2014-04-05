.class Lcom/android/phone/CallCard$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCard;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 6966
    iput-object p1, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    .line 6967
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 6968
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6971
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete: cursor.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6973
    const/4 v1, 0x0

    .line 6975
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz p3, :cond_0

    .line 6976
    move-object v1, p3

    .line 6985
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6986
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 6988
    .local v0, count:I
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$1502(I)I

    .line 6989
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1602([Ljava/lang/String;)[Ljava/lang/String;

    .line 6990
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1702([Ljava/lang/String;)[Ljava/lang/String;

    .line 6992
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6993
    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "number"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 6994
    invoke-static {}, Lcom/android/phone/CallCard;->access$1700()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 6996
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6992
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6978
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    const-string v3, "CallCard"

    const-string v4, "cursor is null"

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 6979
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$1402(Z)Z

    .line 6980
    invoke-static {v6}, Lcom/android/phone/CallCard;->access$1502(I)I

    .line 7016
    :cond_1
    :goto_1
    return-void

    .line 6999
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7000
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$1402(Z)Z

    .line 7003
    invoke-static {}, Lcom/android/phone/CallCard;->access$1500()I

    move-result v3

    if-lez v3, :cond_1

    .line 7004
    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/CallCard;->access$1700()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_1

    .line 7007
    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 7008
    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/CallCard;->access$1800()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$1600()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7009
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1100(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$1700()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7010
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7011
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6999
    .end local v0           #count:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7000
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$1402(Z)Z

    throw v3

    .line 7007
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
