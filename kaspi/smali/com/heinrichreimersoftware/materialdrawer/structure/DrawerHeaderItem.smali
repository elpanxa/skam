.class public Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;
.super Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
.source "DrawerHeaderItem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setIsHeader(Z)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 25
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->getTextPrimary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->hasTextPrimary()Z

    move-result v0

    return v0
.end method

.method public removeTitle()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->removeTextPrimary()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 62
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 35
    return-object p0
.end method
