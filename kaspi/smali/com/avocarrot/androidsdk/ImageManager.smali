.class Lcom/avocarrot/androidsdk/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;


# instance fields
.field private final ERROR_IMAGE:Ljava/lang/String;

.field cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

.field protected mCurrentImageLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/ImageLoadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCurrentImageViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field protected weakErrorImage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    .line 296
    const-string v0, "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"

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->ERROR_IMAGE:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->weakErrorImage:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance v0, Lcom/avocarrot/androidsdk/CacheManager;

    invoke-direct {v0, p1}, Lcom/avocarrot/androidsdk/CacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    .line 47
    return-void
.end method


# virtual methods
.method protected addImageView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 161
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 162
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method protected addLoadListener(Ljava/lang/String;Lcom/avocarrot/androidsdk/ImageLoadListener;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 201
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    .line 202
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    .line 204
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "ImageManager, clear"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method getErrorImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->weakErrorImage:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->weakErrorImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const-string v0, "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"

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/ref/WeakReference;

    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/avocarrot/androidsdk/ImageManager;->weakErrorImage:Ljava/lang/ref/WeakReference;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->weakErrorImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadImageInto(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0, v0}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 52
    return-void
.end method

.method public loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 62
    return-void
.end method

.method public loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;Lcom/avocarrot/androidsdk/ImageLoadListener;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Cannot use ImageManager After clear()"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/CacheManager;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_3
    if-eqz p3, :cond_0

    .line 83
    invoke-interface {p3, p1, v0}, Lcom/avocarrot/androidsdk/ImageLoadListener;->imageHasLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    move v2, v4

    .line 90
    :goto_1
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 93
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 94
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v5, v0, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_c

    .line 96
    check-cast v0, Landroid/widget/ProgressBar;

    .line 98
    :goto_2
    if-nez v0, :cond_7

    .line 100
    invoke-virtual {p0, p2}, Lcom/avocarrot/androidsdk/ImageManager;->replaceImageViewByAddingSpinner(Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 101
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/ImageManager;->addImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 108
    :cond_8
    if-eqz p3, :cond_9

    .line 109
    invoke-virtual {p0, p1, p3}, Lcom/avocarrot/androidsdk/ImageManager;->addLoadListener(Ljava/lang/String;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 111
    :cond_9
    if-nez v2, :cond_0

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 114
    new-instance v0, Lcom/avocarrot/androidsdk/ImageLoadTask;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/ImageLoadTask;-><init>(Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/avocarrot/androidsdk/ImageLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 86
    goto :goto_1

    .line 116
    :cond_b
    new-instance v0, Lcom/avocarrot/androidsdk/ImageLoadTask;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/ImageLoadTask;-><init>(Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;)V

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_2
.end method

.method public loadImageInto(Ljava/lang/String;Lcom/avocarrot/androidsdk/ImageLoadListener;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 57
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avocarrot/androidsdk/ImageManager;->updateAllLoadListener(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 195
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/ImageManager;->getErrorImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avocarrot/androidsdk/ImageManager;->updateAllImageViews(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 196
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Could not load image"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, p3, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->cacheManager:Lcom/avocarrot/androidsdk/CacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/avocarrot/androidsdk/CacheManager;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/ImageManager;->updateAllLoadListener(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/ImageManager;->updateAllImageViews(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 190
    return-void
.end method

.method public replaceImageViewByAddingSpinner(Landroid/widget/ImageView;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v9, -0x1

    const/4 v1, 0x0

    const/4 v8, -0x2

    .line 220
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v1

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 227
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 228
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 229
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 234
    :try_start_0
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010077

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    invoke-virtual {v5, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    if-nez v2, :cond_2

    .line 244
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    invoke-virtual {v5, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 255
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 257
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 237
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected updateAllImageViews(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    if-eqz v0, :cond_2

    .line 173
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/ImageManager;->updateImageViewByRemovingSpinner(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected updateAllLoadListener(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ImageLoadListener;

    .line 143
    if-eqz p2, :cond_2

    .line 144
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/avocarrot/androidsdk/ImageLoadListener;->imageHasLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    goto :goto_1

    .line 146
    :cond_2
    invoke-interface {v0, p1}, Lcom/avocarrot/androidsdk/ImageLoadListener;->imageFailedToLoad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImageManager;->mCurrentImageLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateImageViewByRemovingSpinner(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 268
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 274
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 275
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 277
    check-cast v1, Landroid/view/ViewGroup;

    .line 279
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 280
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method
