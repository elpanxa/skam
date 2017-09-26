.class Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;
.super Lcom/startapp/android/publish/slider/sliding/c$a;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

.field private final b:I

.field private c:Lcom/startapp/android/publish/slider/sliding/c;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout;I)V
    .locals 1

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/c$a;-><init>()V

    .line 1316
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d$1;-><init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;)V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->d:Ljava/lang/Runnable;

    .line 1323
    iput p2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b:I

    .line 1324
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;)V
    .locals 0

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 1373
    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 1374
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_1

    .line 1376
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->i(Landroid/view/View;)V

    .line 1378
    :cond_1
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1407
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1}, Lcom/startapp/android/publish/slider/sliding/c;->b()I

    move-result v2

    .line 1408
    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b:I

    if-ne v1, v5, :cond_4

    move v3, v4

    .line 1409
    :goto_0
    if-eqz v3, :cond_5

    .line 1410
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v5}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    .line 1417
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1420
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1421
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;II)Z

    .line 1422
    iput-boolean v4, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->c:Z

    .line 1423
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 1425
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b()V

    .line 1427
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->c()V

    .line 1429
    :cond_3
    return-void

    :cond_4
    move v3, v0

    .line 1408
    goto :goto_0

    .line 1413
    :cond_5
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1414
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1459
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1468
    :goto_0
    return v0

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v0

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1332
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b:I

    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/slider/sliding/c;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1345
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1402
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1384
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->d(Landroid/view/View;)F

    move-result v1

    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1388
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1389
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1395
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(II)Z

    .line 1396
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 1397
    return-void

    .line 1389
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 1391
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v0

    .line 1392
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 1350
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1353
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1359
    :goto_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1360
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->invalidate()V

    .line 1362
    return-void

    .line 1356
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getWidth()I

    move-result v1

    .line 1357
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 1360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/startapp/android/publish/slider/sliding/c;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    .line 1328
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 1446
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1452
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->c:Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {v1, v0, p2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;I)V

    .line 1455
    :cond_0
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1366
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    .line 1367
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->c:Z

    .line 1369
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$d;->b()V

    .line 1370
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x0

    return v0
.end method
