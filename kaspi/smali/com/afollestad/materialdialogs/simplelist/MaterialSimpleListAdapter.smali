.class public Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MaterialSimpleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_simplelist_item:I

    const v1, 0x1020016

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 39
    return-void
.end method

.method private isRTL()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getItemsGravity()Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v2

    .line 75
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getItemsGravity()Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 85
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 84
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 96
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 95
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;

    .line 56
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_0
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    iget-object v3, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getItemColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    move-object v0, v2

    .line 65
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 67
    :cond_0
    return-object v2

    .line 60
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;Z)V

    .line 29
    return-void
.end method

.method public setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;Z)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->notifyDataSetChanged()V

    .line 35
    :cond_0
    return-void
.end method
