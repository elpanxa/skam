.class Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mRoot:Landroid/widget/FrameLayout;

.field private final mTextViewPrimary:Landroid/widget/TextView;

.field private final mTextViewSecondary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 228
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mRoot:Landroid/widget/FrameLayout;

    .line 229
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 230
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdTextPrimary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdTextSecondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    .line 232
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextViewPrimary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewSecondary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    return-object v0
.end method
