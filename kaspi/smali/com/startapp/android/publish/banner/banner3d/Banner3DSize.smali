.class public Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/a;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x3

    .line 67
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 69
    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->d()I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 70
    invoke-virtual {p2}, Lcom/startapp/android/publish/banner/BannerOptions;->e()I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 72
    const-string v0, "Banner3DSize"

    const-string v3, "=============== set Application Size ==========="

    invoke-static {v0, v7, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 75
    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 77
    :cond_0
    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 78
    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 80
    :cond_1
    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_2

    invoke-virtual {p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v0, :cond_5

    .line 81
    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 82
    const-string v0, "Banner3DSize"

    const-string v3, "Context is Activity"

    invoke-static {v0, v7, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p0

    .line 84
    check-cast v0, Landroid/app/Activity;

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 90
    :try_start_0
    check-cast p1, Landroid/view/View;

    .line 91
    instance-of v0, p1, Lcom/startapp/android/publish/banner/Banner;

    if-eqz v0, :cond_b

    .line 92
    const-string v0, "Banner3DSize"

    const/4 v3, 0x3

    const-string v4, "Parent is instance of Wrapper Banner"

    invoke-static {v0, v3, v4}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    :goto_0
    move-object v4, v0

    move v0, v1

    .line 96
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_4

    .line 97
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_a

    if-nez v1, :cond_a

    .line 99
    invoke-static {p0, v5, v4}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    move v3, v2

    .line 101
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_9

    if-nez v0, :cond_9

    .line 103
    invoke-static {p0, v5, v4}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    move v1, v2

    .line 105
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    move v0, v1

    move v1, v3

    goto :goto_1

    .line 107
    :cond_4
    if-nez v4, :cond_6

    .line 108
    invoke-static {p0, v5, v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_5
    :goto_4
    const-string v0, "Banner3DSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============ exit Application Size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    new-instance v0, Lcom/startapp/android/publish/banner/a;

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/banner/a;-><init>(II)V

    return-object v0

    .line 110
    :cond_6
    if-nez v1, :cond_7

    .line 112
    :try_start_1
    invoke-static {p0, v5, v4}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    .line 114
    :cond_7
    if-nez v0, :cond_5

    .line 116
    invoke-static {p0, v5, v4}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {p0, v5, v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    .line 122
    const-string v0, "Banner3DSize"

    const-string v1, "Exception occoured"

    invoke-static {v0, v7, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 126
    :cond_8
    const-string v0, "Banner3DSize"

    const-string v1, "Context not Activity, get max win size"

    invoke-static {v0, v7, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 128
    if-eqz v0, :cond_5

    .line 129
    invoke-static {p0, v0, v5}, Lcom/startapp/android/publish/h/b;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V

    goto :goto_4

    :cond_9
    move v1, v0

    goto :goto_3

    :cond_a
    move v3, v1

    goto/16 :goto_2

    :cond_b
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 141
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/banner/banner3d/Banner3D;Lcom/startapp/android/publish/banner/a;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    .line 42
    const-string v0, "Banner3DSize"

    const-string v1, "============== Optimize Size =========="

    invoke-static {v0, v9, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/banner/BannerOptions;Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/a;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/startapp/android/publish/banner/a;->a(II)V

    .line 47
    invoke-static {}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->values()[Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 49
    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v7

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v7

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 52
    const-string v0, "Banner3DSize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BannerSize ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v9, v7}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v0

    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/banner/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Lcom/startapp/android/publish/banner/BannerOptions;->a(II)V

    .line 54
    const/4 v0, 0x1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    if-nez v0, :cond_2

    .line 59
    invoke-virtual {p2, v2, v2}, Lcom/startapp/android/publish/banner/BannerOptions;->a(II)V

    .line 62
    :cond_2
    const-string v1, "Banner3DSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============== Optimize Size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] =========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 145
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 150
    return-void
.end method
