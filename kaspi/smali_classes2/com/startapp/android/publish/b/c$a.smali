.class Lcom/startapp/android/publish/b/c$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/b/c;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/startapp/android/publish/b/c;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/c$a;->b:Z

    .line 51
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/c$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/b/c$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/b/c$a;-><init>(Lcom/startapp/android/publish/b/c;)V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 71
    .line 73
    iget-boolean v1, p0, Lcom/startapp/android/publish/b/c$a;->c:Z

    if-nez v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->b(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v3}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 77
    iget-object v3, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/e;)Lcom/startapp/android/publish/e;

    .line 78
    iget-object v3, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v3}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v3, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v3}, Lcom/startapp/android/publish/b/c;->c(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 80
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v0

    .line 84
    :goto_0
    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/AdEventListener;

    .line 86
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/StartAppAd;

    .line 87
    invoke-virtual {p1}, Lcom/startapp/android/publish/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/startapp/android/publish/StartAppAd;->setErrorMessage(Ljava/lang/String;)V

    .line 88
    new-instance v5, Lcom/startapp/android/publish/b;

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v5, v1}, Lcom/startapp/android/publish/b;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 81
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/c$a;->c:Z

    .line 94
    return-void

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/startapp/android/publish/b/c$a;->b:Z

    if-nez v0, :cond_2

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/c$a;->b:Z

    .line 57
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/AdEventListener;

    .line 59
    iget-object v1, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v1}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/StartAppAd;

    .line 60
    invoke-virtual {p1}, Lcom/startapp/android/publish/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/startapp/android/publish/StartAppAd;->setErrorMessage(Ljava/lang/String;)V

    .line 61
    new-instance v5, Lcom/startapp/android/publish/b;

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v5, v1}, Lcom/startapp/android/publish/b;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$a;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_2
    return-void
.end method
