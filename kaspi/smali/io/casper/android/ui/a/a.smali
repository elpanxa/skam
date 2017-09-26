.class public Lio/casper/android/ui/a/a;
.super Landroid/view/View;
.source "StickerView.java"

# interfaces
.implements Lio/casper/android/ui/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lio/casper/android/ui/a/a/b$a",
        "<",
        "Lio/casper/android/ui/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREEN_MARGIN:F = 100.0f

.field private static final UI_MODE_ANISOTROPIC_SCALE:I = 0x2

.field private static final UI_MODE_ROTATE:I = 0x1


# instance fields
.field private currTouchPoint:Lio/casper/android/ui/a/a/b$b;

.field private displayHeight:I

.field private displayWidth:I

.field private mChangeListener:Lio/casper/android/ui/a/a$a;

.field private mContext:Landroid/content/Context;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/casper/android/ui/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mUIMode:I

.field private multiTouchController:Lio/casper/android/ui/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/ui/a/a/b",
            "<",
            "Lio/casper/android/ui/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lio/casper/android/ui/a/a/b;

    invoke-direct {v0, p0}, Lio/casper/android/ui/a/a/b;-><init>(Lio/casper/android/ui/a/a/b$a;)V

    iput-object v0, p0, Lio/casper/android/ui/a/a;->multiTouchController:Lio/casper/android/ui/a/a/b;

    .line 47
    new-instance v0, Lio/casper/android/ui/a/a/b$b;

    invoke-direct {v0}, Lio/casper/android/ui/a/a/b$b;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a;->currTouchPoint:Lio/casper/android/ui/a/a/b$b;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/ui/a/a;->mUIMode:I

    .line 63
    iput-object p1, p0, Lio/casper/android/ui/a/a;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    .line 67
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->a()V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a/a;->setEnabled(Z)V

    .line 71
    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/a/a;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/ui/a/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/ui/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/ui/a/a/b$b;)Lio/casper/android/ui/a/a/c;
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v2

    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v3

    .line 194
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 196
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/a/a/a;

    .line 197
    invoke-virtual {v0, v2, v3}, Lio/casper/android/ui/a/a/a;->a(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    :goto_1
    return-object v0

    .line 195
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 79
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 81
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lio/casper/android/ui/a/a;->displayWidth:I

    .line 82
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lio/casper/android/ui/a/a;->displayHeight:I

    .line 84
    return-void

    .line 81
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v8, 0x42c80000    # 100.0f

    .line 165
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v0, p0, Lio/casper/android/ui/a/a;->displayWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v9

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    add-float v3, v8, v0

    .line 168
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v0, p0, Lio/casper/android/ui/a/a;->displayHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v9

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    add-float v4, v8, v0

    .line 169
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/a/a/c;

    invoke-virtual {v0, p1, v3, v4}, Lio/casper/android/ui/a/a/c;->a(Landroid/content/Context;FF)V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lio/casper/android/ui/a/a/a;

    iget-object v1, p0, Lio/casper/android/ui/a/a;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, p1, v1}, Lio/casper/android/ui/a/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    .line 89
    iget-object v1, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, v0}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/c;)V

    .line 91
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 93
    return-void
.end method

.method public a(Lcom/imojiapp/imoji/sdk/Imoji;)V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/ui/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 99
    iget-object v1, p0, Lio/casper/android/ui/a/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 100
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 103
    new-instance v1, Lio/casper/android/ui/a/a$1;

    invoke-direct {v1, p0, v0}, Lio/casper/android/ui/a/a$1;-><init>(Lio/casper/android/ui/a/a;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 125
    invoke-virtual {p0, v1}, Lio/casper/android/ui/a/a;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sget-object v2, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v3, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSize320:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {p1, v2, v3}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 129
    return-void
.end method

.method public a(Lio/casper/android/ui/a/a/c;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 159
    iget v0, p0, Lio/casper/android/ui/a/a;->displayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v2

    sub-float/2addr v0, v2

    .line 160
    iget v1, p0, Lio/casper/android/ui/a/a;->displayHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v2

    sub-float/2addr v1, v2

    .line 161
    iget-object v2, p0, Lio/casper/android/ui/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lio/casper/android/ui/a/a/c;->a(Landroid/content/Context;FF)V

    .line 162
    return-void
.end method

.method public a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$b;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lio/casper/android/ui/a/a;->currTouchPoint:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0, p2}, Lio/casper/android/ui/a/a/b$b;->a(Lio/casper/android/ui/a/a/b$b;)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 213
    return-void
.end method

.method public a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$c;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 216
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->b()F

    move-result v1

    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->c()F

    move-result v2

    iget v3, p0, Lio/casper/android/ui/a/a;->mUIMode:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->d()F

    move-result v4

    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->e()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lio/casper/android/ui/a/a;->mUIMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v0

    :goto_1
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->d()F

    move-result v6

    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->e()F

    move-result v7

    iget v9, p0, Lio/casper/android/ui/a/a;->mUIMode:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    move v8, v0

    :cond_0
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/c;->f()F

    move-result v9

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lio/casper/android/ui/a/a/b$c;->a(FFZFZFFZF)V

    .line 217
    return-void

    :cond_1
    move v3, v8

    .line 216
    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lio/casper/android/ui/a/a/c;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$c;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lio/casper/android/ui/a/a/c;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$c;)V

    return-void
.end method

.method public a(Lio/casper/android/ui/a/a/b$b;Lio/casper/android/ui/a/a/c;)Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Lio/casper/android/ui/a/a/b$b;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p2, Lio/casper/android/ui/a/a/c;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/b$b;Lio/casper/android/ui/a/a/c;)Z

    move-result v0

    return v0
.end method

.method public a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$c;Lio/casper/android/ui/a/a/b$b;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lio/casper/android/ui/a/a;->currTouchPoint:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0, p3}, Lio/casper/android/ui/a/a/b$b;->a(Lio/casper/android/ui/a/a/b$b;)V

    .line 221
    invoke-virtual {p1, p2}, Lio/casper/android/ui/a/a/c;->a(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 225
    :cond_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$c;Lio/casper/android/ui/a/a/b$b;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lio/casper/android/ui/a/a/c;

    invoke-virtual {p0, p1, p2, p3}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/c;Lio/casper/android/ui/a/a/b$c;Lio/casper/android/ui/a/a/b$b;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lio/casper/android/ui/a/a/b$b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/b$b;)Lio/casper/android/ui/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/a/a/c;

    .line 135
    invoke-virtual {v0}, Lio/casper/android/ui/a/a/c;->a()V

    .line 136
    iget-object v1, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 140
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->requestLayout()V

    .line 142
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/a/a/c;

    .line 147
    invoke-virtual {v0}, Lio/casper/android/ui/a/a/c;->a()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 152
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->requestLayout()V

    .line 154
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 235
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mChangeListener:Lio/casper/android/ui/a/a$a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mChangeListener:Lio/casper/android/ui/a/a$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lio/casper/android/ui/a/a$a;->a(I)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 176
    iget-object v0, p0, Lio/casper/android/ui/a/a;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/a/a/c;

    .line 177
    invoke-virtual {v0, p1}, Lio/casper/android/ui/a/a/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lio/casper/android/ui/a/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lio/casper/android/ui/a/a;->multiTouchController:Lio/casper/android/ui/a/a/b;

    invoke-virtual {v0, p1}, Lio/casper/android/ui/a/a/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangeListener(Lio/casper/android/ui/a/a$a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lio/casper/android/ui/a/a;->mChangeListener:Lio/casper/android/ui/a/a$a;

    .line 75
    return-void
.end method
