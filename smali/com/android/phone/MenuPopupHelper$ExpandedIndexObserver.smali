.class Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/android/phone/MenuPopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/phone/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MenuPopupHelper;Lcom/android/phone/MenuPopupHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/phone/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mAdapter:Lcom/android/phone/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/android/phone/MenuPopupHelper;->access$600(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 386
    return-void
.end method
