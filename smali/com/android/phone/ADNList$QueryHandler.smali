.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 271
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onDeleteComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 307
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onInsertComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 295
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onQueryComplete: Fragment finished."

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 284
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;Z)V

    .line 288
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onUpdateComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 301
    return-void
.end method
