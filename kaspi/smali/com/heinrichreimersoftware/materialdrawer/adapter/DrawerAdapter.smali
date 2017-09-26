.class public Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;,
        Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->selectedPosition:I

    .line 52
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->select(I)V

    .line 215
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 3
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
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v1
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->selectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 57
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 59
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasDrawerTheme()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 60
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    move-result-object v1

    move-object v2, v1

    .line 63
    :goto_0
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_header_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_1
    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;

    invoke-direct {v1, p2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_divider_light:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    :goto_1
    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    .line 79
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderTitleRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_divider_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 84
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_2
    :goto_2
    return-object p2

    .line 73
    :cond_3
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_divider_dark:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderTitleRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$HeaderViewHolder;->getHeaderRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_divider_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_divider_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 93
    :cond_5
    if-eqz p2, :cond_6

    instance-of v1, p2, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_7

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_7
    new-instance v5, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;

    invoke-direct {v5, p2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    const/4 v3, -0x1

    .line 100
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimary()I

    move-result v1

    .line 102
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 103
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_light:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_3
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_a

    .line 109
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 114
    :goto_4
    iget v4, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->selectedPosition:I

    if-ne p1, v4, :cond_b

    .line 115
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 117
    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getHighlightColor()I

    move-result v1

    move v3, v1

    .line 122
    :goto_5
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 123
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getImageMode()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    .line 129
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_avatar_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v4, v1

    .line 140
    :goto_6
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 142
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline_content:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 144
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline_content:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v1, v6

    sub-int/2addr v1, v4

    .line 146
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v4, v6, :cond_e

    .line 147
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v1, v8}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 156
    :goto_7
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasTextPrimary()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 157
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextPrimary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasTextSecondary()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextMode()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextMode()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_11

    .line 161
    :cond_8
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextSecondary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondary()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 166
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_2

    .line 105
    :cond_9
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_dark:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 111
    :cond_a
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x106000d

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 119
    :cond_b
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setSelected(Z)V

    move v9, v1

    move v1, v3

    move v3, v9

    goto/16 :goto_5

    .line 131
    :cond_c
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_icon_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 133
    const/4 v6, -0x1

    if-eq v1, v6, :cond_d

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getImageMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 134
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v1, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 136
    :cond_d
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_6

    .line 149
    :cond_e
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v1, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_7

    .line 153
    :cond_f
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 168
    :cond_10
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_2

    .line 172
    :cond_11
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 174
    :cond_12
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasTextSecondary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getTextPrimary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_13
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasOnItemClickListener()Z

    move-result v0

    return v0
.end method

.method public select(I)V
    .locals 1

    .prologue
    .line 204
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 205
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->selectedPosition:I

    .line 206
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->selectedPosition:I

    .line 209
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 192
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method
