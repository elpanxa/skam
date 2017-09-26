.class public Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "DrawerFrameLayout.java"


# instance fields
.field private final mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_frame_layout:I

    invoke-static {p1, v0, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdDrawer:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 53
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_drawer_shadow:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerShadow(II)V

    .line 56
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$attr;->colorPrimaryDark:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setStatusBarBackgroundColor(I)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [I

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$attr;->drawerMaxWidth:I

    aput v2, v1, v3

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 73
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setStatusBarBackgroundColor(I)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    goto :goto_1
.end method


# virtual methods
.method public addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 343
    return-object p0
.end method

.method public addFixedDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addFixedDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 512
    return-object p0
.end method

.method public addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 504
    return-object p0
.end method

.method public addFixedItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addFixedItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 484
    return-object p0
.end method

.method public varargs addFixedItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addFixedItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 494
    return-object p0
.end method

.method public addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 335
    return-object p0
.end method

.method public addItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 315
    return-object p0
.end method

.method public varargs addItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 325
    return-object p0
.end method

.method public addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 165
    return-object p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method public clearFixedItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->clearFixedItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 606
    return-object p0
.end method

.method public clearItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->clearItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 437
    return-object p0
.end method

.method public clearProfiles()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->clearProfiles()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 232
    return-object p0
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->closeDrawer(Landroid/view/View;)V

    .line 658
    return-void
.end method

.method public findFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public findItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public findProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->findProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDrawerMaxWidth()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getDrawerMaxWidth()I

    move-result v0

    return v0
.end method

.method public getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    move-result-object v0

    return-object v0
.end method

.method public getFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getFixedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getFixedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public getOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFixedPosition()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getSelectedFixedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public hasOnFixedItemClickListener()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnFixedItemClickListener()Z

    move-result v0

    return v0
.end method

.method public hasOnItemClickListener()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnItemClickListener()Z

    move-result v0

    return v0
.end method

.method public hasOnProfileClickListener()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnProfileClickListener()Z

    move-result v0

    return v0
.end method

.method public hasOnProfileSwitchListener()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnProfileSwitchListener()Z

    move-result v0

    return v0
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->openDrawer(Landroid/view/View;)V

    .line 651
    return-void
.end method

.method public removeFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 588
    return-object p0
.end method

.method public removeFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 578
    return-object p0
.end method

.method public removeFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 598
    return-object p0
.end method

.method public removeItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 429
    return-object p0
.end method

.method public removeItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 409
    return-object p0
.end method

.method public removeItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 419
    return-object p0
.end method

.method public removeOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 642
    return-object p0
.end method

.method public removeOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 473
    return-object p0
.end method

.method public removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 268
    return-object p0
.end method

.method public removeOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 304
    return-object p0
.end method

.method public removeProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 214
    return-object p0
.end method

.method public removeProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->removeProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 224
    return-object p0
.end method

.method public resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 138
    return-object p0
.end method

.method public resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 103
    return-object p0
.end method

.method public selectFixedItem(I)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 551
    return-void
.end method

.method public selectFixedItemById(J)V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 569
    return-void
.end method

.method public selectItem(I)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 382
    return-void
.end method

.method public selectItemById(J)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 400
    return-void
.end method

.method public selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 194
    return-object p0
.end method

.method public selectProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 204
    return-object p0
.end method

.method public setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 155
    return-object p0
.end method

.method public setDrawerMaxWidthResource(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setDrawerMaxWidthResource(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 130
    return-object p0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 120
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setLoggingEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 95
    return-object p0
.end method

.method public setOnFixedItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnFixedItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 625
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 456
    return-object p0
.end method

.method public setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 251
    return-object p0
.end method

.method public setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 287
    return-object p0
.end method
