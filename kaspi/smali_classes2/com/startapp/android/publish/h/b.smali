.class public Lcom/startapp/android/publish/h/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/h/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/h/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZ)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 118
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 121
    if-nez p2, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 122
    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    .line 128
    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v2, :cond_2

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    move v0, v1

    .line 132
    goto :goto_0

    :cond_4
    move v0, v2

    .line 134
    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;IZ)I
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/h/b;->a(IIZ)I

    move-result v0

    .line 306
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 307
    return v0
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 472
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/startapp/android/publish/h/b$2;

    invoke-direct {v0}, Lcom/startapp/android/publish/h/b$2;-><init>()V

    .line 361
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 363
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 82
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 367
    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 368
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 158
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 163
    :goto_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 164
    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 165
    return-void

    .line 160
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 161
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 150
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;J)V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 154
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 196
    new-instance v0, Lcom/startapp/android/publish/h/b$1;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/h/b$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .prologue
    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/WindowManager;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 169
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 172
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 436
    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/VideoView;Lcom/startapp/android/publish/h/b$a;)V
    .locals 2

    .prologue
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 448
    new-instance v0, Lcom/startapp/android/publish/h/b$3;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/h/b$3;-><init>(Lcom/startapp/android/publish/h/b$a;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 456
    :cond_0
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 392
    invoke-static {}, Lcom/startapp/android/publish/g/a;->a()Ljava/net/CookieManager;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Cookie"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    const-string v2, "Cookie"

    const-string v3, "="

    const-string v0, "Cookie"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 460
    new-instance v0, Lcom/startapp/android/publish/h/b$4;

    invoke-direct {v0}, Lcom/startapp/android/publish/h/b$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 468
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 281
    .line 284
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 90
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 379
    invoke-static {p0}, Lcom/startapp/android/publish/g/a;->a(Landroid/content/Context;)V

    .line 381
    :cond_0
    return-void
.end method

.method public static b(Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const/4 v0, 0x6

    const-string v1, "Error while calling webView.onPause()"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 412
    invoke-static {}, Lcom/startapp/android/publish/g/a;->a()Ljava/net/CookieManager;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 417
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
