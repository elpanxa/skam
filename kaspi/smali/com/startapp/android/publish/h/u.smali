.class public Lcom/startapp/android/publish/h/u;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/h/u$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static c:Landroid/app/ProgressDialog;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/startapp/android/publish/h/u;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 749
    const/4 v0, 0x0

    sput-boolean v0, Lcom/startapp/android/publish/h/u;->d:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;IZ)I
    .locals 2

    .prologue
    .line 341
    if-eqz p2, :cond_3

    .line 345
    sget-object v0, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_2

    .line 349
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/h/b;->a(Landroid/app/Activity;IZ)I

    move-result v0

    .line 362
    :cond_1
    :goto_0
    return v0

    .line 351
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/h/b;->a(Landroid/app/Activity;IZ)I

    move-result v0

    goto :goto_0

    .line 357
    :cond_3
    const/4 v0, -0x1

    .line 358
    sget-object v1, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    sget-object v0, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 360
    sget-object v1, Lcom/startapp/android/publish/h/u;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 965
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 392
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 394
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 395
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {p0, p1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p2, p1

    .line 1121
    :goto_0
    return-object p2

    .line 1120
    :cond_1
    const-string v0, "StartAppWall.Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is missing from AndroidManifest.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1020
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1021
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1022
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 1030
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1025
    :catch_1
    move-exception v0

    .line 1026
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1027
    :catch_2
    move-exception v0

    .line 1028
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string v0, "3.0.2"

    .line 81
    const-string v1, "${project.version}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v0, "0"

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/startapp/android/publish/h/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK version: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 87
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 155
    const/4 v0, 0x0

    .line 157
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 160
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_2

    .line 158
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1058
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    const-string v0, "[?&]d="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1063
    :goto_0
    return-object v0

    .line 1061
    :cond_0
    const-string v0, "[?&]d="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 203
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 207
    if-eq v1, v3, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 209
    if-eq v2, v3, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 434
    add-int/lit8 v1, v0, 0x5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/startapp/android/publish/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&isShown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&appPresence="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 435
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 438
    :cond_1
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newUrlList size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 439
    return-object v2
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;IZ)I

    .line 368
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 992
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 994
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 995
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/startapp/android/publish/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 999
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    const-string v0, "shared_prefs_devId"

    invoke-static {p0, v0, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string v1, "shared_prefs_appId"

    invoke-static {p0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 759
    if-nez v0, :cond_0

    .line 763
    :cond_0
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/model/AdPreferences;->setPublisherId(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;

    .line 765
    :cond_1
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 766
    if-nez v1, :cond_2

    .line 770
    :cond_2
    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/model/AdPreferences;->setProductId(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;

    .line 773
    :cond_3
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 774
    :cond_4
    sget-boolean v0, Lcom/startapp/android/publish/h/u;->d:Z

    if-nez v0, :cond_5

    .line 775
    const/4 v0, 0x1

    sput-boolean v0, Lcom/startapp/android/publish/h/u;->d:Z

    .line 776
    const-string v0, "StartApp"

    const-string v1, "Integration Error - Developer ID and/or App ID is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 3

    .prologue
    .line 457
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Impression: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 459
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/h/u;->c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 461
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 733
    const/high16 v1, 0x4880000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->isDisableInAppStore()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 737
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 740
    :cond_1
    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 742
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    sget-object v1, Lcom/startapp/android/publish/d/b$a;->b:Lcom/startapp/android/publish/d/b$a;

    const-string v2, "Util.openUrlExternally(): Couldn\'t start activity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0, p2}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find activity to handle url: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 4

    .prologue
    .line 472
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-static {p0, p2, p3}, Lcom/startapp/android/publish/h/u;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 475
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isDisableTwoClicks()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/startapp/android/publish/h/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 478
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_1
    return-void

    .line 476
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-static {p1, p2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    sget-object v2, Lcom/startapp/android/publish/d/b$a;->b:Lcom/startapp/android/publish/d/b$a;

    const-string v3, "Util.clickWithoutSmartRedirect(): Couldn\'t start activity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find activity to handle url: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 523
    invoke-static {p1}, Lcom/startapp/android/publish/h/u;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    sget-object v0, Lcom/startapp/android/publish/d/b$a;->c:Lcom/startapp/android/publish/d/b$a;

    const-string v1, "Wrong package name reached"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p3}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-eqz p6, :cond_1

    .line 529
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 536
    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 539
    :cond_3
    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 540
    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 541
    const/4 v1, 0x0

    const-string v2, "Loading...."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/startapp/android/publish/h/u$2;

    invoke-direct {v5, v9}, Lcom/startapp/android/publish/h/u$2;-><init>(Landroid/webkit/WebView;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    .line 547
    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 550
    :cond_4
    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 551
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 552
    new-instance v0, Lcom/startapp/android/publish/h/u$a;

    sget-object v4, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    move-object v1, p0

    move-wide v2, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/h/u$a;-><init>(Landroid/content/Context;JLandroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 553
    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;J)V
    .locals 9

    .prologue
    .line 487
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;JLjava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;JLjava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 491
    invoke-static {p1, p2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-static {p0, p2, p4}, Lcom/startapp/android/publish/h/u;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isDisableTwoClicks()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/startapp/android/publish/h/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;)V

    .line 496
    return-void

    .line 495
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 2

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 466
    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/startapp/android/publish/h/s;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/startapp/android/publish/h/s;->a(I)Lcom/startapp/android/publish/h/s;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/startapp/android/publish/h/s;->a(Ljava/lang/String;)Lcom/startapp/android/publish/h/s;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 448
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 849
    :try_start_0
    const-string v1, "http://www.startappexchange.com"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    const/4 v0, 0x6

    const-string v1, "StartAppWall.UtilError while encoding html"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1090
    if-eqz p0, :cond_3

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    if-eqz p2, :cond_2

    .line 1096
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 1097
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1098
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :goto_1
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1104
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1108
    :cond_2
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v0, "StartAppWall.Util"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runJavascript: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1113
    :cond_3
    return-void
.end method

.method public static a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;Lcom/startapp/android/publish/Ad$AdType;)V
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0, p2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1015
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1036
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1038
    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1046
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 1041
    :catch_1
    move-exception v0

    .line 1042
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1043
    :catch_2
    move-exception v0

    .line 1044
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/h/s;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 937
    invoke-static {p3, p2, p4}, Lcom/startapp/android/publish/h/u;->c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 939
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 941
    if-eqz p1, :cond_0

    .line 943
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 945
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 947
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    const-string v2, "Couldn\'t parse intent details json!"

    invoke-static {v5, v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 955
    :cond_0
    :try_start_1
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 961
    :goto_1
    return-void

    .line 956
    :catch_1
    move-exception v0

    .line 957
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    sget-object v2, Lcom/startapp/android/publish/d/b$a;->b:Lcom/startapp/android/publish/d/b$a;

    const-string v3, "Util.handleCPEClick(): Couldn\'t start activity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v2, v3, v0, v1}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find activity to handle url: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 246
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 250
    new-instance v0, Lcom/startapp/android/publish/h/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/h/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 253
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    :try_start_0
    new-instance v1, Lcom/startapp/android/publish/model/NameValueObject;

    invoke-direct {v1}, Lcom/startapp/android/publish/model/NameValueObject;-><init>()V

    .line 256
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/model/NameValueObject;->setName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz p4, :cond_1

    .line 259
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_1
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/model/NameValueObject;->setValue(Ljava/lang/String;)V

    .line 262
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_2
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    if-eqz p3, :cond_2

    .line 265
    new-instance v1, Lcom/startapp/android/publish/h/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed encoding value: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/startapp/android/publish/h/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 272
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 273
    new-instance v0, Lcom/startapp/android/publish/h/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/h/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 276
    :cond_0
    if-eqz p2, :cond_3

    .line 277
    new-instance v1, Lcom/startapp/android/publish/model/NameValueObject;

    invoke-direct {v1}, Lcom/startapp/android/publish/model/NameValueObject;-><init>()V

    .line 278
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/model/NameValueObject;->setName(Ljava/lang/String;)V

    .line 279
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 281
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 288
    new-instance v0, Lcom/startapp/android/publish/h/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed encoding value: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/h/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 290
    :cond_2
    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/model/NameValueObject;->setValueSet(Ljava/util/Set;)V

    .line 292
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_3
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 399
    const-string v0, "in getAppPresenceDParameter()"

    invoke-static {v6, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/c;

    .line 404
    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/startapp/android/publish/h/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appPresence tracking size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " normal size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 417
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 418
    const-string v0, "false"

    const-string v3, "true"

    invoke-static {v1, v0, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 421
    const-string v0, "false"

    const-string v1, "false"

    invoke-static {v2, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_4
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v0, [I

    const v3, 0x101020d

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 142
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    sget-object v0, Lcom/startapp/android/publish/d;->OVERRIDE_HOST:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/startapp/android/publish/d;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 195
    :goto_0
    return v0

    .line 189
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1131
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1132
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 1133
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1140
    :goto_1
    return v0

    .line 1132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 1140
    goto :goto_1
.end method

.method public static a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/startapp/android/publish/e;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1067
    instance-of v0, p0, Lcom/startapp/android/publish/a/d;

    if-eqz v0, :cond_0

    .line 1068
    check-cast p0, Lcom/startapp/android/publish/a/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/d;->getTrackingUrls()[Ljava/lang/String;

    move-result-object v0

    .line 1072
    :goto_0
    return-object v0

    .line 1069
    :cond_0
    instance-of v0, p0, Lcom/startapp/android/publish/a/f;

    if-eqz v0, :cond_1

    .line 1070
    check-cast p0, Lcom/startapp/android/publish/a/f;

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    if-eqz p0, :cond_0

    .line 1078
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    .line 1079
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 324
    const-string v0, "landscape"

    .line 328
    :goto_0
    return-object v0

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 326
    const-string v0, "portrait"

    goto :goto_0

    .line 328
    :cond_1
    const-string v0, "undefined"

    goto :goto_0
.end method

.method public static b(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final b()V
    .locals 0

    .prologue
    .line 575
    invoke-static {}, Lcom/startapp/android/publish/h/u;->j()V

    .line 576
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 0

    .prologue
    .line 499
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/h/u;->c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 500
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 784
    const-string v0, "shared_prefs_devId"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "shared_prefs_appId"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/startapp/android/publish/h/u;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Lcom/startapp/android/publish/Ad$AdType;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/Ad$AdType;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/startapp/android/publish/h/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 561
    if-eqz p0, :cond_0

    .line 562
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 563
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 567
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/h/u;->b()V

    .line 568
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 2

    .prologue
    .line 503
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Lcom/startapp/android/publish/h/u;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/startapp/android/publish/h/u$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/startapp/android/publish/h/u$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 515
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 801
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 802
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 804
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 805
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doHome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 806
    const-string v0, "home"

    .line 812
    :goto_1
    return-object v0

    .line 807
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onBackPressed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 808
    const-string v0, "back"

    goto :goto_1

    .line 804
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_2
    const-string v0, "interstitial"

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    const-string v0, "tracking/adImpression[?]d="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 922
    const-string v0, "shared_prefs_simple_token"

    invoke-static {p0}, Lcom/startapp/android/publish/h/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/startapp/android/publish/h/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "_Unity"

    .line 107
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/h/u;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "_Cordova"

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/startapp/android/publish/h/u;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "_AdMob"

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lcom/startapp/android/publish/h/u;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "_MoPub"

    goto :goto_0

    .line 107
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 928
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->e()Lcom/startapp/android/publish/adinformation/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    const-string v1, "shared_prefs_simple_token"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 557
    const-string v0, "market"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://play.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://play.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 969
    const-string v0, ""

    .line 970
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 971
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 974
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 975
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 976
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 977
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 982
    :cond_0
    return-object v0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 111
    const-string v0, "com.startapp.android.mediation.admob.StartAppCustomEvent"

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .locals 1

    .prologue
    .line 115
    const-string v0, "com.mopub.mobileads.StartAppCustomEventInterstitial"

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 119
    const-string v0, "com.apperhand.unity.wrapper.InAppWrapper"

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 123
    const-string v0, "org.apache.cordova.CordovaPlugin"

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static j()V
    .locals 4

    .prologue
    .line 579
    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 580
    sget-object v1, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    monitor-enter v1

    .line 581
    :try_start_0
    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    :try_start_1
    sget-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/startapp/android/publish/h/u;->c:Landroid/app/ProgressDialog;

    .line 589
    :cond_0
    monitor-exit v1

    .line 591
    :cond_1
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const/4 v2, 0x6

    const-string v3, "Error while cancelling progress"

    invoke-static {v2, v3, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
