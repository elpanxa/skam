.class public Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;
.super Ljava/lang/Object;
.source "MaterialSimpleListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;


# direct methods
.method private constructor <init>(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->mBuilder:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;-><init>(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->mBuilder:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->mBuilder:Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(no content)"

    goto :goto_0
.end method
