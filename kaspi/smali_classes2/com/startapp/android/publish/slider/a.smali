.class public Lcom/startapp/android/publish/slider/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/startapp/android/publish/h/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const/4 v1, 0x6

    const-string v2, "Unable to send tracking event in GetSearchBoxService!!!!"

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    const-string v1, "slideEvent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v3, :cond_0

    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    const-string v1, "slideEvent"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/startapp/android/publish/slider/a;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    const-string v1, "trackingEvent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    const-string v1, "trackingUrl"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/startapp/android/publish/slider/a;->a:Landroid/content/Context;

    const-string v2, "trackingEvent"

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/slider/a;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/slider/a$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/slider/a$1;-><init>(Lcom/startapp/android/publish/slider/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    return-void
.end method
