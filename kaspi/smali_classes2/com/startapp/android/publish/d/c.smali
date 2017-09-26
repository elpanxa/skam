.class public Lcom/startapp/android/publish/d/c;
.super Lcom/startapp/android/publish/model/BaseRequest;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/d/b;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/d/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseRequest;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    .line 18
    return-void
.end method


# virtual methods
.method public getNameValueMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-super {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_0
    const-string v1, "category"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->a()Lcom/startapp/android/publish/d/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 36
    const-string v1, "value"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 37
    const-string v1, "details"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 38
    const-string v1, "d"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 39
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 40
    const-string v1, "usedRam"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 41
    const-string v1, "freeRam"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 42
    const-string v1, "sessionTime"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 43
    const-string v1, "appActivity"

    iget-object v2, p0, Lcom/startapp/android/publish/d/c;->a:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/d/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 45
    invoke-static {}, Lcom/startapp/android/publish/h/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/startapp/android/publish/h/c;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 47
    sget-object v2, Lcom/startapp/android/publish/h/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/android/publish/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1, v4, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 49
    return-object v0
.end method
