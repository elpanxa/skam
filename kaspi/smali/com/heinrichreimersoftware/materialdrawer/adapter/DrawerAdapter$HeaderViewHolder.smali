.class Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private final mHeaderDivider:Landroid/view/View;

.field private final mHeaderRoot:Landroid/widget/LinearLayout;

.field private final mHeaderTitle:Landroid/widget/TextView;

.field private final mHeaderTitleRoot:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 258
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderRoot:Landroid/widget/LinearLayout;

    .line 259
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderDivider:Landroid/view/View;

    .line 260
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdHeaderTitleRoot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderTitleRoot:Landroid/widget/LinearLayout;

    .line 261
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdHeaderTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderTitle:Landroid/widget/TextView;

    .line 262
    return-void
.end method


# virtual methods
.method public getHeaderDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderDivider:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderRoot()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeaderTitleRoot()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->mHeaderTitleRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method
