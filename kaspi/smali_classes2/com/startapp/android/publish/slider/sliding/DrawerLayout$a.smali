.class Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;
.super Lcom/startapp/android/publish/slider/sliding/b/a;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/sliding/DrawerLayout;)V
    .locals 1

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/b/a;-><init>()V

    .line 1517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lcom/startapp/android/publish/slider/sliding/a/a;Lcom/startapp/android/publish/slider/sliding/a/a;)V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->c:Landroid/graphics/Rect;

    .line 1565
    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Landroid/graphics/Rect;)V

    .line 1566
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->b(Landroid/graphics/Rect;)V

    .line 1568
    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c(Landroid/graphics/Rect;)V

    .line 1569
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->d(Landroid/graphics/Rect;)V

    .line 1571
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c(Z)V

    .line 1572
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Ljava/lang/CharSequence;)V

    .line 1573
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->b(Ljava/lang/CharSequence;)V

    .line 1574
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c(Ljava/lang/CharSequence;)V

    .line 1576
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->h(Z)V

    .line 1577
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->f(Z)V

    .line 1578
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Z)V

    .line 1579
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->b(Z)V

    .line 1580
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->d(Z)V

    .line 1581
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->e(Z)V

    .line 1582
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->g(Z)V

    .line 1584
    invoke-virtual {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(I)V

    .line 1585
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V
    .locals 4

    .prologue
    .line 1521
    invoke-static {p2}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Lcom/startapp/android/publish/slider/sliding/a/a;)Lcom/startapp/android/publish/slider/sliding/a/a;

    move-result-object v1

    .line 1522
    invoke-super {p0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V

    .line 1524
    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Landroid/view/View;)V

    .line 1525
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/l;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1526
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1527
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c(Landroid/view/View;)V

    .line 1529
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a(Lcom/startapp/android/publish/slider/sliding/a/a;Lcom/startapp/android/publish/slider/sliding/a/a;)V

    .line 1531
    invoke-virtual {v1}, Lcom/startapp/android/publish/slider/sliding/a/a;->s()V

    .line 1533
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1534
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1535
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1536
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1537
    invoke-virtual {p2, v2}, Lcom/startapp/android/publish/slider/sliding/a/a;->b(Landroid/view/View;)V

    .line 1534
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1553
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1545
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    invoke-super {p0, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
