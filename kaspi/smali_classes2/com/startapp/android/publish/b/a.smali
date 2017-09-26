.class public Lcom/startapp/android/publish/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/b/a$1;
    }
.end annotation


# static fields
.field private static a:Lcom/startapp/android/publish/b/a;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/b/b;",
            "Lcom/startapp/android/publish/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/startapp/android/publish/b/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/b/a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/b/a;->a:Lcom/startapp/android/publish/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static a()Lcom/startapp/android/publish/b/a;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/startapp/android/publish/b/a;->a:Lcom/startapp/android/publish/b/a;

    return-object v0
.end method

.method private a(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;)Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/startapp/android/publish/b/a$1;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/StartAppAd$AdMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getFullpageOfferwallProbability()I

    move-result v0

    .line 95
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 97
    if-ge v1, v0, :cond_0

    .line 98
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/model/AdPreferences;)Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/startapp/android/publish/model/AdPreferences;)Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getFullscreenOverlayProbability()I

    move-result v0

    .line 111
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 113
    if-lt v1, v0, :cond_0

    const-string v0, "forceFullpage"

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "forceOverlay"

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 116
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/startapp/android/publish/a/k;
    .locals 3

    .prologue
    .line 208
    const-string v0, "filename_return_ad"

    const-class v1, Lcom/startapp/android/publish/a/k;

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/a/k;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    const-string v1, "filename_return_ad_html"

    const-class v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/startapp/android/publish/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/startapp/android/publish/a/k;->getHtmlUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/a/k;->setContext(Landroid/content/Context;)V

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;
    .locals 7

    .prologue
    .line 63
    if-nez p4, :cond_0

    .line 64
    new-instance p4, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {p4}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    .line 66
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;)Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/StartAppAd$AdMode;

    invoke-virtual {p3, v0}, Lcom/startapp/android/publish/StartAppAd$AdMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "type"

    sget-object v2, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    invoke-static {p4, v0, v2}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;Lcom/startapp/android/publish/Ad$AdType;)V

    .line 70
    :cond_1
    new-instance v2, Lcom/startapp/android/publish/b/b;

    invoke-direct {v2, v1, p4}, Lcom/startapp/android/publish/b/b;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 72
    iget-object v3, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    monitor-enter v3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/c;

    .line 74
    if-nez v0, :cond_2

    .line 75
    const-string v0, "AdCacheManager"

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedAd for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found. Creating new CachedAd with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    new-instance v0, Lcom/startapp/android/publish/b/c;

    new-instance v4, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v4, p4}, Lcom/startapp/android/publish/model/AdPreferences;-><init>(Lcom/startapp/android/publish/model/AdPreferences;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/startapp/android/publish/b/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 77
    iget-object v1, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0, p2, p5}, Lcom/startapp/android/publish/b/c;->b(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V

    .line 81
    return-object v2

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;
    .locals 3

    .prologue
    .line 51
    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    const-string v2, "Loading splash"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    new-instance v1, Lcom/startapp/android/publish/b/b;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p3}, Lcom/startapp/android/publish/b/b;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/c;

    .line 54
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/startapp/android/publish/b/c;

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {v0, p1, v2, p3}, Lcom/startapp/android/publish/b/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 56
    iget-object v2, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v0, p2, p4}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V

    .line 59
    return-object v1
.end method

.method public a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    .line 154
    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/c;

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/startapp/android/publish/b/c;->e()Lcom/startapp/android/publish/e;

    move-result-object v0

    .line 160
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/startapp/android/publish/b/b;Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/e;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p1, :cond_0

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v0, "AdCacheManager"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving ad with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/c;

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - adding key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object p2
.end method

.method public a(Landroid/content/Context;Lcom/startapp/android/publish/a/k;)V
    .locals 2

    .prologue
    .line 223
    const-string v0, "filename_return_ad"

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 224
    const-string v0, "filename_return_ad_html"

    invoke-virtual {p2}, Lcom/startapp/android/publish/a/k;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 225
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/b/c;

    .line 167
    invoke-virtual {v0}, Lcom/startapp/android/publish/b/c;->e()Lcom/startapp/android/publish/e;

    move-result-object v3

    instance-of v3, v3, Lcom/startapp/android/publish/a/d;

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/startapp/android/publish/b/c;->e()Lcom/startapp/android/publish/e;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/a/d;

    .line 169
    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    monitor-exit v1

    .line 176
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/startapp/android/publish/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
