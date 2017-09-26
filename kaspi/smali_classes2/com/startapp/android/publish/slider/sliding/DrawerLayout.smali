.class public Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;,
        Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;,
        Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;,
        Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;,
        Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private final f:Lcom/startapp/android/publish/slider/sliding/c;

.field private final g:Lcom/startapp/android/publish/slider/sliding/c;

.field private final h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

.field private final i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

.field private r:F

.field private s:F

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 222
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c:I

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e:Landroid/graphics/Paint;

    .line 142
    iput-boolean v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    .line 224
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 225
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b:I

    .line 226
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    .line 228
    new-instance v1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;-><init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout;I)V

    iput-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    .line 229
    new-instance v1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;-><init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout;I)V

    iput-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    .line 231
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-static {p0, v3, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/ViewGroup;FLcom/startapp/android/publish/slider/sliding/c$a;)Lcom/startapp/android/publish/slider/sliding/c;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    .line 232
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(I)V

    .line 233
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/c;->a(F)V

    .line 234
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a(Lcom/startapp/android/publish/slider/sliding/c;)V

    .line 236
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-static {p0, v3, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/ViewGroup;FLcom/startapp/android/publish/slider/sliding/c$a;)Lcom/startapp/android/publish/slider/sliding/c;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    .line 237
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(I)V

    .line 238
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/c;->a(F)V

    .line 239
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a(Lcom/startapp/android/publish/slider/sliding/c;)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 244
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;-><init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout;)V

    invoke-static {p0, v0}, Lcom/startapp/android/publish/slider/sliding/b/l;->a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/b/a;)V

    .line 245
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/slider/sliding/b/q;->a(Landroid/view/ViewGroup;Z)V

    .line 246
    return-void
.end method

.method static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 564
    const-string v0, "LEFT"

    .line 569
    :goto_0
    return-object v0

    .line 566
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 567
    const-string v0, "RIGHT"

    goto :goto_0

    .line 569
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a:[I

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1147
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1148
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1149
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1150
    iget-boolean v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->c:Z

    if-eqz v0, :cond_0

    .line 1151
    const/4 v0, 0x1

    .line 1154
    :goto_1
    return v0

    .line 1148
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1154
    goto :goto_1
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Landroid/view/View;
    .locals 4

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1188
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1189
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    :goto_1
    return-object v0

    .line 1187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static k(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 771
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e(Landroid/view/View;)I

    move-result v0

    .line 425
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 426
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->m:I

    .line 431
    :goto_0
    return v0

    .line 427
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 428
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->n:I

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()Landroid/view/View;
    .locals 4

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v3

    .line 523
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 524
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget-boolean v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 529
    :goto_1
    return-object v0

    .line 523
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v2

    .line 545
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 546
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 547
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e(Landroid/view/View;)I

    move-result v3

    .line 548
    and-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, p1, 0x7

    if-ne v3, v4, :cond_0

    .line 553
    :goto_1
    return-object v0

    .line 545
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 553
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 343
    invoke-static {p0}, Lcom/startapp/android/publish/slider/sliding/b/l;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/startapp/android/publish/slider/sliding/b/d;->a(II)I

    move-result v1

    .line 345
    if-ne v1, v2, :cond_3

    .line 346
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->m:I

    .line 350
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 352
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    .line 353
    :goto_1
    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    .line 355
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 370
    :cond_2
    :goto_2
    return-void

    .line 347
    :cond_3
    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 348
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->n:I

    goto :goto_0

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    goto :goto_1

    .line 357
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_2

    .line 363
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_2

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(IILandroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 439
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/slider/sliding/c;->a()I

    move-result v2

    .line 440
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v3}, Lcom/startapp/android/publish/slider/sliding/c;->a()I

    move-result v3

    .line 443
    if-eq v2, v1, :cond_0

    if-ne v3, v1, :cond_3

    .line 451
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 452
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 453
    iget v2, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 454
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b(Landroid/view/View;)V

    .line 460
    :cond_1
    :goto_1
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->j:I

    if-eq v1, v0, :cond_2

    .line 461
    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->j:I

    .line 463
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;->a(I)V

    .line 467
    :cond_2
    return-void

    .line 445
    :cond_3
    if-eq v2, v0, :cond_4

    if-ne v3, v0, :cond_5

    :cond_4
    move v1, v0

    .line 446
    goto :goto_0

    .line 448
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 455
    :cond_6
    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c(Landroid/view/View;)V

    goto :goto_1
.end method

.method a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    invoke-interface {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;->a(Landroid/view/View;F)V

    .line 495
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 964
    .line 965
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 966
    :goto_0
    if-ge v2, v4, :cond_3

    .line 967
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 968
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 970
    invoke-virtual {p0, v5}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->c:Z

    if-nez v6, :cond_1

    .line 966
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 976
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 977
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 984
    :goto_2
    iput-boolean v3, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->c:Z

    goto :goto_1

    .line 980
    :cond_2
    iget-object v6, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_2

    .line 987
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a()V

    .line 988
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a()V

    .line 990
    if-eqz v1, :cond_4

    .line 991
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 993
    :cond_4
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e(Landroid/view/View;)I

    move-result v0

    .line 518
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Z)V

    .line 961
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 471
    iget-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    if-eqz v1, :cond_1

    .line 472
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    .line 473
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;->b(Landroid/view/View;)V

    .line 476
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 478
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 499
    iget v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iput p2, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1198
    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    if-nez v0, :cond_1

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1200
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1202
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1203
    :goto_0
    if-ge v7, v1, :cond_0

    .line 1204
    invoke-virtual {p0, v7}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1203
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    .line 1209
    :cond_1
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 482
    iget-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    if-nez v1, :cond_1

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    .line 484
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;->a(Landroid/view/View;)V

    .line 487
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 489
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1173
    instance-of v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 752
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v3

    .line 753
    const/4 v1, 0x0

    .line 754
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 755
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    .line 756
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_0
    iput v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d:F

    .line 761
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v0, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 762
    invoke-static {p0}, Lcom/startapp/android/publish/slider/sliding/b/l;->a(Landroid/view/View;)V

    .line 764
    :cond_1
    return-void
.end method

.method d(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getHeight()I

    move-result v4

    .line 777
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    .line 778
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v2

    .line 780
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 781
    if-eqz v5, :cond_5

    .line 782
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v7

    .line 783
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_4

    .line 784
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 785
    if-eq v0, p2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_1

    move v0, v2

    .line 783
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 791
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {p0, v0, v8}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 793
    if-le v0, v1, :cond_9

    :goto_2
    move v1, v0

    move v0, v2

    .line 794
    goto :goto_1

    .line 795
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 796
    if-lt v0, v2, :cond_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 799
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_5
    move v0, v2

    .line 801
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 802
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 804
    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    if-eqz v5, :cond_7

    .line 805
    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 806
    int-to-float v2, v2

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 807
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 808
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 833
    :cond_6
    :goto_3
    return v7

    .line 811
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 813
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 814
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/slider/sliding/c;->b()I

    move-result v2

    .line 815
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 817
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 819
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->t:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 820
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 821
    :cond_8
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 822
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 823
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 824
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 825
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v3}, Lcom/startapp/android/publish/slider/sliding/c;->b()I

    move-result v3

    .line 826
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 828
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 830
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 831
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method

.method e(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 513
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/l;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/slider/sliding/b/d;->a(II)I

    move-result v0

    return v0
.end method

.method f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 842
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/l;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/slider/sliding/b/d;->a(II)I

    move-result v0

    .line 844
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1159
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    invoke-direct {v0, v1, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1164
    instance-of v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    check-cast p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public h(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1007
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    .line 1008
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 1018
    return-void

    .line 1010
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public i(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1050
    const/4 v1, 0x0

    iput v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    .line 1051
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    .line 1060
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 1061
    return-void

    .line 1053
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public j(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    .line 582
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    .line 576
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 849
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 852
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v3, p1}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v4, p1}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 857
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 889
    :goto_1
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 859
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 861
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->r:F

    .line 862
    iput v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->s:F

    .line 863
    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 867
    :goto_2
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    .line 868
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    goto :goto_1

    .line 874
    :pswitch_1
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/startapp/android/publish/slider/sliding/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a()V

    .line 876
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a()V

    move v0, v2

    goto :goto_1

    .line 883
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Z)V

    .line 884
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    .line 885
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-static {p2}, Lcom/startapp/android/publish/slider/sliding/b/f;->a(Landroid/view/KeyEvent;)V

    .line 1215
    const/4 v0, 0x1

    .line 1217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1222
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1223
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g()Landroid/view/View;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b()V

    .line 1227
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1229
    :goto_0
    return v0

    .line 1227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1229
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->k:Z

    .line 663
    sub-int v6, p4, p2

    .line 664
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v7

    .line 665
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_9

    .line 666
    invoke-virtual {p0, v5}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 668
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 665
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 674
    invoke-virtual {p0, v8}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    iget v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->leftMargin:I

    iget v2, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    iget v3, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 680
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 684
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 685
    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 686
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 692
    :goto_2
    iget v3, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    .line 694
    :goto_3
    iget v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 696
    sparse-switch v4, :sswitch_data_0

    .line 699
    iget v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 729
    :goto_4
    if-eqz v3, :cond_3

    .line 730
    invoke-virtual {p0, v8, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b(Landroid/view/View;F)V

    .line 733
    :cond_3
    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 734
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 735
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 688
    :cond_4
    int-to-float v1, v9

    iget v2, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 689
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    .line 692
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 704
    :sswitch_0
    sub-int v4, p5, p3

    .line 705
    iget v10, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 713
    :sswitch_1
    sub-int v11, p5, p3

    .line 714
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 718
    iget v12, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    if-ge v4, v12, :cond_7

    .line 719
    iget v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    .line 723
    :cond_6
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 720
    :cond_7
    add-int v12, v4, v10

    iget v13, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_6

    .line 721
    iget v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    .line 733
    :cond_8
    const/4 v0, 0x4

    goto :goto_5

    .line 739
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->k:Z

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->l:Z

    .line 741
    return-void

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/16 v1, 0x12c

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    .line 586
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 587
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 588
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 589
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 591
    if-ne v3, v10, :cond_0

    if-eq v5, v10, :cond_5

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 597
    if-ne v3, v7, :cond_3

    .line 603
    :cond_1
    :goto_0
    if-ne v5, v7, :cond_4

    move v1, v0

    .line 616
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->setMeasuredDimension(II)V

    .line 620
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v5

    move v3, v4

    .line 621
    :goto_2
    if-ge v3, v5, :cond_b

    .line 622
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 624
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_7

    .line 621
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 599
    :cond_3
    if-nez v3, :cond_1

    move v2, v1

    .line 601
    goto :goto_0

    .line 606
    :cond_4
    if-eqz v5, :cond_2

    :cond_5
    move v1, v0

    goto :goto_1

    .line 611
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 630
    invoke-virtual {p0, v6}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 632
    iget v7, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->leftMargin:I

    sub-int v7, v2, v7

    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->rightMargin:I

    sub-int/2addr v7, v8

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 634
    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    sub-int v8, v1, v8

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    sub-int v0, v8, v0

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 636
    invoke-virtual {v6, v7, v0}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 637
    :cond_8
    invoke-virtual {p0, v6}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 638
    invoke-virtual {p0, v6}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->e(Landroid/view/View;)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    .line 640
    and-int v8, v4, v7

    if-eqz v8, :cond_9

    .line 641
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child drawer has absolute gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_9
    iget v7, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b:I

    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->width:I

    invoke-static {p1, v7, v8}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 648
    iget v8, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->topMargin:I

    iget v9, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->bottomMargin:I

    add-int/2addr v8, v9

    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->height:I

    invoke-static {p2, v8, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 651
    invoke-virtual {v6, v7, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 653
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_b
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1234
    check-cast p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;

    .line 1235
    invoke-virtual {p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1237
    iget v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 1238
    iget v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h(Landroid/view/View;)V

    .line 1244
    :cond_0
    iget v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(II)V

    .line 1245
    iget v0, p1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(II)V

    .line 1246
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 1250
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1252
    new-instance v2, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;

    invoke-direct {v2, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1254
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1255
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1256
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1257
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1255
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1261
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1262
    iget-boolean v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->d:Z

    if-eqz v4, :cond_0

    .line 1263
    iget v0, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    iput v0, v2, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    .line 1269
    :cond_2
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->m:I

    iput v0, v2, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->b:I

    .line 1270
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->n:I

    iput v0, v2, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->c:I

    .line 1272
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 894
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/MotionEvent;)V

    .line 895
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/MotionEvent;)V

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 900
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 941
    :goto_0
    :pswitch_0
    return v1

    .line 902
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 904
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->r:F

    .line 905
    iput v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->s:F

    .line 906
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    .line 907
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    goto :goto_0

    .line 912
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 915
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v4

    .line 916
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 917
    iget v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->r:F

    sub-float/2addr v0, v4

    .line 918
    iget v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->s:F

    sub-float/2addr v3, v4

    .line 919
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v4}, Lcom/startapp/android/publish/slider/sliding/c;->d()I

    move-result v4

    .line 920
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 922
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_1

    .line 924
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 928
    :goto_1
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Z)V

    .line 929
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 924
    goto :goto_1

    .line 934
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Z)V

    .line 935
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    .line 936
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->p:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 945
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->f:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/slider/sliding/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g:Lcom/startapp/android/publish/slider/sliding/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 950
    :cond_0
    iput-boolean p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->o:Z

    .line 951
    if-eqz p1, :cond_1

    .line 952
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Z)V

    .line 954
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->k:Z

    if-nez v0, :cond_0

    .line 746
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 748
    :cond_0
    return-void
.end method

.method public setDrawerListener(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->q:Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;

    .line 303
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(II)V

    .line 320
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(II)V

    .line 321
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c:I

    .line 292
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 293
    return-void
.end method
