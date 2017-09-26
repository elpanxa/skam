.class public Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrawerProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget v0, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 3
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
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 52
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 54
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDrawerTheme()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 55
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    move-result-object v1

    move-object v3, v1

    .line 58
    :goto_0
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$layout;->md_drawer_item:I

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_1
    new-instance v4, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;

    invoke-direct {v4, p2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimary()I

    move-result v1

    .line 66
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_light:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_1
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 78
    :goto_2
    if-nez p1, :cond_5

    .line 79
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 80
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 82
    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getHighlightColor()I

    move-result v1

    move v2, v1

    .line 88
    :goto_3
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasAvatar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_avatar_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline_content:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 96
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline_content:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_baseline:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$dimen;->md_avatar_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v1, v5

    .line 98
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_6

    .line 99
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v1, v8}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 108
    :goto_4
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 109
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 127
    :cond_2
    :goto_5
    return-object p2

    .line 69
    :cond_3
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/heinrichreimersoftware/materialdrawer/R$drawable;->md_selector_dark:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 75
    :cond_4
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x106000d

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 84
    :cond_5
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 85
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    move v2, v1

    goto/16 :goto_3

    .line 101
    :cond_6
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v1, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 105
    :cond_7
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 118
    :cond_8
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 120
    :cond_9
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewPrimary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {v4}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter$ViewHolder;->getTextViewSecondary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_a
    move-object v3, v1

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 132
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->drawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 137
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method
