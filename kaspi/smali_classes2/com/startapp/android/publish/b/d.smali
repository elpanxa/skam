.class public Lcom/startapp/android/publish/b/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/startapp/android/publish/b/d;->c:J

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/startapp/android/publish/b/d;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/startapp/android/publish/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    check-cast p1, Lcom/startapp/android/publish/b/d;

    .line 54
    iget-object v2, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 55
    iget-object v2, p1, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    .line 40
    iget-object v0, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 42
    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
