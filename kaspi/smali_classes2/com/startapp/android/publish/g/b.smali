.class public Lcom/startapp/android/publish/g/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final a:Ljava/net/CookieStore;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/startapp/android/publish/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.startapp.android.publish.CookiePrefsFile"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    .line 37
    new-instance v1, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/g/b;->c:Lcom/startapp/android/publish/gson/Gson;

    .line 38
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    .line 41
    iget-object v1, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "names"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    const-string v2, ";"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 45
    iget-object v4, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cookie_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v4, p0, Lcom/startapp/android/publish/g/b;->c:Lcom/startapp/android/publish/gson/Gson;

    const-class v5, Ljava/net/HttpCookie;

    invoke-virtual {v4, v0, v5}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/g/b;->a(Ljava/net/HttpCookie;)V

    .line 51
    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->b()V

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method private a(Ljava/net/HttpCookie;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/g/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method private a(Ljava/net/HttpCookie;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/g/b;->c:Lcom/startapp/android/publish/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method

.method private b(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    const-string v1, "names"

    const-string v2, ";"

    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->c()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 138
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/g/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    return-object v1
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/g/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v1, p1, p2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 66
    invoke-direct {p0, p2, v0}, Lcom/startapp/android/publish/g/b;->a(Ljava/net/HttpCookie;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->b()V

    .line 68
    return-void
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->getURIs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0, p1, p2}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/g/b;->a(Ljava/net/HttpCookie;)V

    .line 89
    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->b()V

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/g/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->a()V

    .line 100
    invoke-direct {p0}, Lcom/startapp/android/publish/g/b;->b()V

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
