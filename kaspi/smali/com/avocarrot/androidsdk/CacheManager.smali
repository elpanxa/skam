.class public Lcom/avocarrot/androidsdk/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;
    }
.end annotation


# instance fields
.field bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/CacheManager;->bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;

    .line 22
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CacheManager;->bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;

    if-nez v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/avocarrot/androidsdk/Utils;->getAvailableMemoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v0

    .line 24
    new-instance v1, Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;

    invoke-direct {v1, v0}, Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;-><init>(I)V

    iput-object v1, p0, Lcom/avocarrot/androidsdk/CacheManager;->bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Failed to initialize Cache Manager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CacheManager;->bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CacheManager;->bitmapLruCache:Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/CacheManager$BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
