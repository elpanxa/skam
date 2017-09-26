.class public Lcom/startapp/android/publish/b/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/b/c$3;,
        Lcom/startapp/android/publish/b/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private c:Lcom/startapp/android/publish/model/AdPreferences;

.field private d:Lcom/startapp/android/publish/e;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/AdEventListener;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/StartAppAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/StartAppAd;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/StartAppAd;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/c;->e:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/b/c;->g:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/startapp/android/publish/b/c;->b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 101
    iput-object p3, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/e;)Lcom/startapp/android/publish/e;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/startapp/android/publish/StartAppAd;)V
    .locals 3

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->g:Ljava/util/Map;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit v1

    .line 200
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/b/c;)Lcom/startapp/android/publish/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    return-object v0
.end method

.method private h()Lcom/startapp/android/publish/e;
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getProbability3D()I

    move-result v0

    .line 275
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 277
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    const-string v1, "forceOfferWall3D"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    const-string v1, "forceOfferWall2D"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lcom/startapp/android/publish/a/h;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/h;-><init>(Landroid/content/Context;)V

    .line 284
    :goto_0
    return-object v0

    .line 282
    :cond_1
    new-instance v0, Lcom/startapp/android/publish/a/i;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/i;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/e;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    .line 216
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 219
    monitor-exit v1

    .line 231
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    .line 222
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->g()Lcom/startapp/android/publish/e;

    move-result-object v2

    iput-object v2, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    .line 224
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    iget-object v3, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    new-instance v4, Lcom/startapp/android/publish/b/c$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/startapp/android/publish/b/c$a;-><init>(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/b/c$1;)V

    invoke-interface {v2, v3, v4}, Lcom/startapp/android/publish/e;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 225
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->b()V

    .line 230
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_2
    :try_start_1
    sget-object v2, Lcom/startapp/android/publish/d;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 5

    .prologue
    .line 105
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_0
    new-instance v0, Lcom/startapp/android/publish/b;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 124
    :goto_0
    monitor-exit v1

    .line 125
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->f()Lcom/startapp/android/publish/e;

    move-result-object v2

    iput-object v2, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    .line 112
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    iget-object v3, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    new-instance v4, Lcom/startapp/android/publish/b/c$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/startapp/android/publish/b/c$1;-><init>(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-interface {v2, v3, v4}, Lcom/startapp/android/publish/e;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->c()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 173
    return-void
.end method

.method public b(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 6

    .prologue
    .line 128
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->e:Ljava/util/Map;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "CachedAd"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/startapp/android/publish/b/c;->b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad already loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    new-instance v0, Lcom/startapp/android/publish/b;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/b;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    :goto_1
    return-void

    .line 135
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 159
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 138
    :cond_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/b/c;->b(Lcom/startapp/android/publish/StartAppAd;)V

    .line 139
    if-eqz p2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->e:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    :try_start_6
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    if-eqz v0, :cond_4

    .line 149
    const-string v0, "CachedAd"

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/startapp/android/publish/b/c;->b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ad is currently loading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 152
    :cond_4
    :try_start_8
    const-string v0, "CachedAd"

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/startapp/android/publish/b/c;->b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->g()Lcom/startapp/android/publish/e;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    .line 154
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    iget-object v3, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    new-instance v4, Lcom/startapp/android/publish/b/c$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/startapp/android/publish/b/c$a;-><init>(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/b/c$1;)V

    invoke-interface {v0, v3, v4}, Lcom/startapp/android/publish/e;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 155
    invoke-virtual {p0}, Lcom/startapp/android/publish/b/c;->b()V

    .line 157
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method protected c()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/startapp/android/publish/b/c$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/b/c$2;-><init>(Lcom/startapp/android/publish/b/c;)V

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    invoke-interface {v0}, Lcom/startapp/android/publish/e;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lcom/startapp/android/publish/e;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->d:Lcom/startapp/android/publish/e;

    return-object v0
.end method

.method public f()Lcom/startapp/android/publish/e;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/startapp/android/publish/a/m;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public g()Lcom/startapp/android/publish/e;
    .locals 5

    .prologue
    .line 243
    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->c:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 247
    sget-object v0, Lcom/startapp/android/publish/b/c$3;->a:[I

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->b:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Lcom/startapp/android/publish/a/c;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/c;-><init>(Landroid/content/Context;)V

    .line 266
    :goto_0
    const-string v1, "CachedAd"

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad Type: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    return-object v0

    .line 250
    :pswitch_0
    new-instance v0, Lcom/startapp/android/publish/a/c;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :pswitch_1
    new-instance v0, Lcom/startapp/android/publish/a/j;

    iget-object v1, p0, Lcom/startapp/android/publish/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0}, Lcom/startapp/android/publish/b/c;->h()Lcom/startapp/android/publish/e;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
