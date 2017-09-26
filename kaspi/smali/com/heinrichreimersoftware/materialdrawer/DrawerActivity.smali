.class public Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DrawerActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field private mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

.field private mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

.field private mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->switchFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method private switchFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 132
    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 140
    :cond_1
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 141
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method

.method public addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 536
    return-object p0
.end method

.method public addFixedDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addFixedDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 705
    return-object p0
.end method

.method public addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 697
    return-object p0
.end method

.method public addFixedItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addFixedItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 677
    return-object p0
.end method

.method public varargs addFixedItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addFixedItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 687
    return-object p0
.end method

.method public addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 528
    return-object p0
.end method

.method public addItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addItems(Ljava/util/List;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 508
    return-object p0
.end method

.method public varargs addItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addItems([Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 518
    return-object p0
.end method

.method public addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 358
    return-object p0
.end method

.method public clearFixedItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->clearFixedItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 799
    return-object p0
.end method

.method public clearItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->clearItems()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 630
    return-object p0
.end method

.method public clearProfiles()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->clearProfiles()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 425
    return-object p0
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->closeDrawer()V

    .line 851
    return-void
.end method

.method public findFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->findFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public findItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->findItemById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public findProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->findProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDrawerMaxWidth()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getDrawerMaxWidth()I

    move-result v0

    return v0
.end method

.method public getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    move-result-object v0

    return-object v0
.end method

.method public getFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

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
    .line 714
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getFixedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getItem(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

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
    .line 545
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public getOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method public getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

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
    .line 367
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFixedPosition()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getSelectedFixedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnFixedItemClickListener()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnItemClickListener()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnProfileClickListener()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->hasOnProfileClickListener()Z

    move-result v0

    return v0
.end method

.method public hasOnProfileSwitchListener()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->hasOnProfileSwitchListener()Z

    move-result v0

    return v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->isDrawerIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_activity:I

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 60
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdDrawerLayout:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 61
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdToolbar:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

    .line 62
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdFrame:I

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 64
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 66
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->closeDrawer()V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 162
    return-void
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->openDrawer()V

    .line 844
    return-void
.end method

.method public removeFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeFixedItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 781
    return-object p0
.end method

.method public removeFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeFixedItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 771
    return-object p0
.end method

.method public removeFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeFixedItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 791
    return-object p0
.end method

.method public removeItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeItem(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 612
    return-object p0
.end method

.method public removeItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 602
    return-object p0
.end method

.method public removeItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeItemById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 622
    return-object p0
.end method

.method public removeOnFixedItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 835
    return-object p0
.end method

.method public removeOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 666
    return-object p0
.end method

.method public removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 461
    return-object p0
.end method

.method public removeOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeOnProfileSwitchListener()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 497
    return-object p0
.end method

.method public removeProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 407
    return-object p0
.end method

.method public removeProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->removeProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 417
    return-object p0
.end method

.method public resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->resetDrawerMaxWidth()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 331
    return-object p0
.end method

.method public resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->resetDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 296
    return-object p0
.end method

.method public selectFixedItem(I)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectFixedItem(I)V

    .line 744
    return-void
.end method

.method public selectFixedItemById(J)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectFixedItemById(J)V

    .line 762
    return-void
.end method

.method public selectItem(I)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectItem(I)V

    .line 575
    return-void
.end method

.method public selectItemById(J)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectItemById(J)V

    .line 593
    return-void
.end method

.method public selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 387
    return-object p0
.end method

.method public selectProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->selectProfileById(J)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 397
    return-object p0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 173
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 179
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 206
    :cond_0
    return-object p0
.end method

.method public setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerMaxWidth(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 348
    return-object p0
.end method

.method public setDrawerMaxWidthResource(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerMaxWidthResource(I)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 323
    return-object p0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 313
    return-object p0
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_0
    return-void
.end method

.method public setLoggingEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setLoggingEnabled(Z)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 288
    return-object p0
.end method

.method public setOnFixedItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 818
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 649
    return-object p0
.end method

.method public setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 444
    return-object p0
.end method

.method public setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 480
    return-object p0
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 7
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x8

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDefaultToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    sget v5, Lcom/heinrichreimersoftware/materialdrawer/R$string;->md_content_description_drawer_open:I

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$string;->md_content_description_drawer_close:I

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 93
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 94
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 96
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 111
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawer:Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$3;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$3;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;->setOnFixedItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerFrameLayout;

    .line 127
    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_0
    return-void
.end method
