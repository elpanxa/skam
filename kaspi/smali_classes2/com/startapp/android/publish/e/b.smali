.class public abstract Lcom/startapp/android/publish/e/b;
.super Lcom/startapp/android/publish/e/d;
.source "StartAppSDK"


# instance fields
.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;Z)V
    .locals 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/e/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/e/b;->g:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/e/b;->i:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/e/b;->k:Landroid/os/Handler;

    .line 53
    iput-boolean p6, p0, Lcom/startapp/android/publish/e/b;->j:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/e/b;)Lcom/startapp/android/publish/video/VideoAdDetails;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/startapp/android/publish/e/b;->g()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 154
    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/c;

    .line 157
    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 158
    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    :goto_1
    iget-object v7, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->e()I

    move-result v8

    invoke-static {v7, v3, v8}, Lcom/startapp/android/publish/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    .line 161
    if-nez v6, :cond_0

    if-nez v7, :cond_1

    :cond_0
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    :cond_1
    move v3, v4

    .line 162
    :goto_2
    if-eqz v3, :cond_2

    .line 163
    const/4 v1, 0x3

    const-string v3, "in isAppPresent, skipAd is true"

    invoke-static {v1, v3}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 164
    invoke-virtual {v0, v7}, Lcom/startapp/android/publish/c;->b(Z)V

    .line 165
    iget v1, p0, Lcom/startapp/android/publish/e/b;->i:I

    if-nez v1, :cond_5

    move v1, v4

    .line 167
    :goto_3
    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    .line 168
    iget-object v3, p0, Lcom/startapp/android/publish/e/b;->g:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move v3, v2

    .line 161
    goto :goto_2

    :cond_5
    move v1, v2

    .line 165
    goto :goto_3

    .line 169
    :cond_6
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&isShown="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->c()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&appPresence="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/c;->d()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/c;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 177
    :cond_7
    if-eqz v1, :cond_8

    move v3, v2

    .line 178
    :goto_5
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/c;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/c;->a(Z)V

    .line 178
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 183
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/e/b;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/d;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/e/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-array v0, v4, [Ljava/lang/String;

    .line 124
    const-string v1, "@tracking@"

    const-string v2, "@tracking@"

    invoke-static {p1, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    .line 130
    const-string v2, "@appPresencePackage@"

    const-string v3, "@appPresencePackage@"

    invoke-static {p1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    .line 136
    const-string v3, "@minAppVersion@"

    const-string v5, "@minAppVersion@"

    invoke-static {p1, v3, v5}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    move v3, v4

    .line 142
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 143
    new-instance v8, Lcom/startapp/android/publish/c;

    array-length v5, v0

    if-le v5, v3, :cond_3

    aget-object v5, v0, v3

    :goto_1
    aget-object v9, v1, v3

    iget v10, p0, Lcom/startapp/android/publish/e/b;->i:I

    array-length v6, v2

    if-le v6, v3, :cond_4

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    invoke-direct {v8, v5, v9, v10, v6}, Lcom/startapp/android/publish/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    :cond_5
    move v1, v4

    .line 147
    :goto_3
    invoke-direct {v5, v6, v8, v9, v1}, Lcom/startapp/android/publish/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v3, v3, 0x1

    :cond_6
    array-length v1, v0

    if-ge v3, v1, :cond_7

    .line 147
    new-instance v5, Lcom/startapp/android/publish/c;

    aget-object v6, v0, v3

    const-string v8, ""

    iget v9, p0, Lcom/startapp/android/publish/e/b;->i:I

    array-length v1, v2

    if-le v1, v3, :cond_5

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 150
    :cond_7
    return-object v7
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/startapp/android/publish/e/b;->g()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Lcom/startapp/android/publish/video/VideoAdDetails;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/b;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    if-ne v2, v3, :cond_0

    .line 61
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/startapp/android/publish/video/f;->a(Landroid/content/Context;)Lcom/startapp/android/publish/video/f$c;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/startapp/android/publish/video/f$c;->a:Lcom/startapp/android/publish/video/f$c;

    if-eq v2, v3, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/startapp/android/publish/video/f$c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/e/b;->f:Ljava/lang/String;

    .line 92
    :goto_0
    return-object v0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->g:Ljava/util/Set;

    iget-object v3, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->g:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/model/GetAdRequest;->setPackageExclude(Ljava/util/Set;)V

    .line 74
    iget v2, p0, Lcom/startapp/android/publish/e/b;->i:I

    if-lez v2, :cond_2

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    .line 76
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->e()Lcom/startapp/android/publish/adinformation/e;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/startapp/android/publish/h/u;->d(Landroid/content/Context;)V

    .line 85
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    sget-object v3, Lcom/startapp/android/publish/d$a;->a:Lcom/startapp/android/publish/d$a;

    invoke-static {v3}, Lcom/startapp/android/publish/d;->a(Lcom/startapp/android/publish/d$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const/4 v2, 0x6

    const-string v3, "Unable to handle GetHtmlAdService command!!!!"

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {v1}, Lcom/startapp/android/publish/h/p;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/e/b;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/d;->a(Ljava/lang/Boolean;)V

    .line 189
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute, result=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/startapp/android/publish/b/e;->a()Lcom/startapp/android/publish/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/startapp/android/publish/e/b;->g()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapp/android/publish/e/b$1;

    invoke-direct {v3, p0, p1}, Lcom/startapp/android/publish/e/b$1;-><init>(Lcom/startapp/android/publish/e/b;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/android/publish/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/video/c$a;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/e/b;->a(Z)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 6

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const-string v1, "adHashcode"

    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "adResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 230
    if-eqz p1, :cond_2

    .line 231
    iget-boolean v0, p0, Lcom/startapp/android/publish/e/b;->j:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 235
    new-instance v0, Lcom/startapp/android/publish/e/b$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/e/b$2;-><init>(Lcom/startapp/android/publish/e/b;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 273
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/android/publish/e/b$3;

    invoke-direct {v2, p0, v1}, Lcom/startapp/android/publish/e/b$3;-><init>(Lcom/startapp/android/publish/e/b;Landroid/webkit/WebView;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :goto_0
    return-void

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0

    .line 293
    :cond_2
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute failed error=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x4

    const-string v1, "Handle Html Response"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    .line 99
    check-cast p1, Ljava/lang/String;

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "Empty Ad"

    iput-object v0, p0, Lcom/startapp/android/publish/e/b;->f:Ljava/lang/String;

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/e/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/e/b;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/a/d;->setApps(Ljava/util/List;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/b;->b()Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/startapp/android/publish/e/b;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    .line 299
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/a/d;->setHtml(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/startapp/android/publish/e/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/d;->b(Ljava/lang/Boolean;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x3

    const-string v1, "At least one package is present. sending another request to AdPlatform"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/startapp/android/publish/e/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/e/b;->i:I

    .line 309
    new-instance v0, Lcom/startapp/android/publish/e/a;

    iget-object v1, p0, Lcom/startapp/android/publish/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/e/b;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/e/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/a;->a()V

    .line 312
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
