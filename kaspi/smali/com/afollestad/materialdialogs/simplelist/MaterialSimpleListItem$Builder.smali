.class public Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
.super Ljava/lang/Object;
.source "MaterialSimpleListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mContent:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public build()Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;-><init>(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$1;)V

    return-object v0
.end method

.method public content(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mContent:Ljava/lang/CharSequence;

    .line 49
    return-object p0
.end method

.method public icon(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    return-object p0
.end method
