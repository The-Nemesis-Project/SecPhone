.class Lcom/android/phone/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/phone/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/phone/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/MenuPopupHelper;Lcom/android/phone/MenuBuilder;)V
    .locals 2
    .parameter
    .parameter "menu"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 315
    iput-object p2, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    .line 316
    new-instance v0, Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/phone/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/phone/MenuPopupHelper;Lcom/android/phone/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MenuPopupHelper$MenuAdapter;)Lcom/android/phone/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 366
    iget-object v5, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mMenu:Lcom/android/phone/MenuBuilder;
    invoke-static {v5}, Lcom/android/phone/MenuPopupHelper;->access$500(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/MenuBuilder;->getExpandedItem()Lcom/android/phone/MenuItemImpl;

    move-result-object v1

    .line 367
    .local v1, expandedItem:Lcom/android/phone/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 368
    iget-object v5, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mMenu:Lcom/android/phone/MenuBuilder;
    invoke-static {v5}, Lcom/android/phone/MenuPopupHelper;->access$500(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 369
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 370
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 371
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/MenuItemImpl;

    .line 372
    .local v3, item:Lcom/android/phone/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 373
    iput v2, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 379
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/phone/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 370
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/android/phone/MenuItemImpl;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/phone/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$200(Lcom/android/phone/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/phone/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 323
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 324
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 326
    :goto_1
    return v1

    .line 321
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/phone/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 326
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/phone/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$200(Lcom/android/phone/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/phone/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 332
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 333
    add-int/lit8 p1, p1, 0x1

    .line 335
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MenuItemImpl;

    return-object v1

    .line 330
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/phone/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/phone/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 341
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 345
    if-nez p2, :cond_2

    .line 346
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$300(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$300(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$300(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$300(Lcom/android/phone/MenuPopupHelper;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$400(Lcom/android/phone/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009f

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    move-object v0, p2

    .line 355
    check-cast v0, Lcom/android/phone/MenuView$ItemView;

    .line 356
    .local v0, itemView:Lcom/android/phone/MenuView$ItemView;
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/android/phone/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    move-object v1, p2

    .line 357
    check-cast v1, Lcom/android/phone/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/ListMenuItemView;->setForceShowIcon(Z)V

    .line 359
    :cond_3
    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/phone/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/phone/MenuView$ItemView;->initialize(Lcom/android/phone/MenuItemImpl;I)V

    .line 362
    :cond_4
    return-object p2

    .line 351
    .end local v0           #itemView:Lcom/android/phone/MenuView$ItemView;
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/phone/MenuPopupHelper;

    #getter for: Lcom/android/phone/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/phone/MenuPopupHelper;->access$400(Lcom/android/phone/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method
