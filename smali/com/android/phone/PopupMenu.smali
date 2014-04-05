.class public Lcom/android/phone/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/phone/MenuBuilder$Callback;
.implements Lcom/android/phone/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PopupMenu$OnMenuItemClickListener;,
        Lcom/android/phone/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/android/phone/PopupMenu$OnDismissListener;

.field private mMenu:Lcom/android/phone/MenuBuilder;

.field private mMenuItemClickListener:Lcom/android/phone/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/android/phone/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "anchor"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/phone/PopupMenu;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/phone/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/phone/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PopupMenu;->mMenu:Lcom/android/phone/MenuBuilder;

    .line 62
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->setCallback(Lcom/android/phone/MenuBuilder$Callback;)V

    .line 63
    iput-object p2, p0, Lcom/android/phone/PopupMenu;->mAnchor:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/android/phone/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/phone/PopupMenu;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/phone/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/phone/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/PopupMenu;->mPopup:Lcom/android/phone/MenuPopupHelper;

    .line 65
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mPopup:Lcom/android/phone/MenuPopupHelper;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuPopupHelper;->setCallback(Lcom/android/phone/MenuPresenter$Callback;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mPopup:Lcom/android/phone/MenuPopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mPopup:Lcom/android/phone/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/phone/MenuPopupHelper;->dismiss()V

    .line 113
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mMenu:Lcom/android/phone/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/phone/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCloseMenu(Lcom/android/phone/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mDismissListener:Lcom/android/phone/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mDismissListener:Lcom/android/phone/PopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/phone/PopupMenu$OnDismissListener;->onDismiss(Lcom/android/phone/PopupMenu;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/phone/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mMenuItemClickListener:Lcom/android/phone/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mMenuItemClickListener:Lcom/android/phone/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/android/phone/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/android/phone/MenuBuilder;)Z
    .locals 4
    .parameter "subMenu"

    .prologue
    const/4 v0, 0x1

    .line 156
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lcom/android/phone/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/phone/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/phone/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/phone/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/phone/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/android/phone/PopupMenu$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/PopupMenu;->mDismissListener:Lcom/android/phone/PopupMenu$OnDismissListener;

    .line 131
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/android/phone/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/PopupMenu;->mMenuItemClickListener:Lcom/android/phone/PopupMenu$OnMenuItemClickListener;

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/PopupMenu;->mPopup:Lcom/android/phone/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/phone/MenuPopupHelper;->show()V

    .line 105
    return-void
.end method
