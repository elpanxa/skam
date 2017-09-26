.class Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DrawerProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
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
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 155
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mRoot:Landroid/widget/FrameLayout;

    .line 156
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdTextPrimary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$id;->mdTextSecondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    .line 159
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextViewPrimary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewSecondary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    return-object v0
.end method
