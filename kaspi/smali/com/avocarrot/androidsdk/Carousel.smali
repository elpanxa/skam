.class public Lcom/avocarrot/androidsdk/Carousel;
.super Landroid/widget/FrameLayout;
.source "Carousel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;",
            "Lcom/avocarrot/androidsdk/CarouselListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    if-eqz p6, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/Carousel;->recyclerViewExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;)V

    .line 33
    :goto_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/avocarrot/androidsdk/Carousel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_1
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Request Carousel but RecyclerView not in classpath. Using Plain Interstitial."

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselPlain;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/avocarrot/androidsdk/CarouselPlain;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselPlain;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/avocarrot/androidsdk/CarouselPlain;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;)V

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Cannot create carousel view."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method recyclerViewExists()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    :try_start_0
    const-string v1, "com.avocarrot.androidsdk.CarouselRecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    goto :goto_0

    .line 46
    :catch_2
    move-exception v1

    goto :goto_0

    .line 44
    :catch_3
    move-exception v1

    goto :goto_0
.end method
