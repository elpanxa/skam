.class public Lcom/startapp/android/publish/b/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/b/e;


# instance fields
.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/startapp/android/publish/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/startapp/android/publish/b/e;

    invoke-direct {v0}, Lcom/startapp/android/publish/b/e;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/b/e;->a:Lcom/startapp/android/publish/b/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/b/e;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/startapp/android/publish/b/e;->a:Lcom/startapp/android/publish/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/b/e;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    const-string v1, "cachedVideoAds"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/b/e$2;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/b/e$2;-><init>(Lcom/startapp/android/publish/b/e;)V

    invoke-virtual {v2}, Lcom/startapp/android/publish/b/e$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    .line 111
    iget-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    .line 114
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoConfig;->getMaxCachedVideos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/b/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/b/e;->b(Landroid/content/Context;)V

    .line 118
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/b/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/b/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 121
    const-string v0, "cachedVideoAds"

    new-instance v1, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/video/c$a;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/b/e;->a(Landroid/content/Context;)V

    .line 38
    const-string v0, ""

    .line 40
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 43
    const/4 v0, 0x0

    const/16 v4, 0x2e

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/startapp/android/publish/h/d;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "[^a-zA-Z0-9]+"

    const-string v7, "_"

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 49
    :goto_0
    :try_start_3
    new-instance v3, Lcom/startapp/android/publish/b/d;

    invoke-direct {v3, v0}, Lcom/startapp/android/publish/b/d;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/startapp/android/publish/b/e$1;

    invoke-direct {v4, p0, p3, v3, p1}, Lcom/startapp/android/publish/b/e$1;-><init>(Lcom/startapp/android/publish/b/e;Lcom/startapp/android/publish/video/c$a;Lcom/startapp/android/publish/b/d;Landroid/content/Context;)V

    .line 65
    iget-object v5, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 68
    const-string v5, "VideoAdCacheManager"

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cachedVideoAds already contained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/startapp/android/publish/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - removed. Size = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/model/MetaData;->getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/video/VideoConfig;->getMaxCachedVideos()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/b/e;->a(I)Z

    .line 71
    new-instance v3, Lcom/startapp/android/publish/video/c;

    invoke-direct {v3, p1, v1, v0, v4}, Lcom/startapp/android/publish/video/c;-><init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lcom/startapp/android/publish/video/c$a;)V

    invoke-virtual {v3}, Lcom/startapp/android/publish/video/c;->a()V

    .line 78
    :cond_1
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v4, "VideoAdCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error applying MD5 digest to filename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v3

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 73
    :goto_2
    const-string v3, "VideoAdCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    if-eqz p3, :cond_1

    .line 75
    invoke-interface {p3, v2}, Lcom/startapp/android/publish/video/c$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected a(I)Z
    .locals 7

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 84
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/d;

    .line 86
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/b/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/b/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 89
    invoke-virtual {v0}, Lcom/startapp/android/publish/b/d;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/startapp/android/publish/b/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 92
    const-string v3, "VideoAdCacheManager"

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cachedVideoAds reached the maximum of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " videos - removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/startapp/android/publish/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Size = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/startapp/android/publish/b/e;->b:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    move v0, v1

    move v1, v0

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    return v1
.end method
