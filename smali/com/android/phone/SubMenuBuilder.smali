.class public Lcom/android/phone/SubMenuBuilder;
.super Lcom/android/phone/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/android/phone/MenuItemImpl;

.field private mParentMenu:Lcom/android/phone/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/MenuBuilder;Lcom/android/phone/MenuItemImpl;)V
    .locals 0
    .parameter "context"
    .parameter "parentMenu"
    .parameter "item"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    .line 38
    iput-object p3, p0, Lcom/android/phone/SubMenuBuilder;->mItem:Lcom/android/phone/MenuItemImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/phone/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuBuilder;->collapseItemActionView(Lcom/android/phone/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/android/phone/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/phone/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/phone/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/phone/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/phone/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuBuilder;->expandItemActionView(Lcom/android/phone/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mItem:Lcom/android/phone/MenuItemImpl;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/phone/MenuBuilder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/phone/MenuBuilder$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuBuilder;->setCallback(Lcom/android/phone/MenuBuilder$Callback;)V

    .line 72
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/phone/MenuBuilder;->setHeaderIconInt(I)Lcom/android/phone/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/phone/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/phone/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/phone/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/phone/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/phone/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/phone/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .parameter "view"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/phone/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/phone/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mItem:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 92
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mItem:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 87
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/SubMenuBuilder;->mParentMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/phone/MenuBuilder;->setQwertyMode(Z)V

    .line 44
    return-void
.end method
