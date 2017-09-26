.class public Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;
.super Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
.source "DrawerFragmentItem.java"


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public hasFragment()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFragment()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->mFragment:Landroid/support/v4/app/Fragment;

    .line 60
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->notifyDataChanged()V

    .line 61
    return-object p0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->mFragment:Landroid/support/v4/app/Fragment;

    .line 32
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->notifyDataChanged()V

    .line 33
    return-object p0
.end method
