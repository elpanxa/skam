.class public Lio/casper/android/c/e/b/b/a;
.super Lio/casper/android/e/a/d;
.source "ZeltaEndpoint.java"


# instance fields
.field private cacheMillis:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cache_millis"
    .end annotation
.end field

.field private endpoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoint"
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headers"
    .end annotation

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

.field private mCacheUntilTimestamp:J

.field private mUsername:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params"
    .end annotation

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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/c/e/b/b/a;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lio/casper/android/c/e/b/b/a;->cacheMillis:J

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/casper/android/c/e/b/b/a;->endpoint:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lio/casper/android/c/e/b/b/a;->headers:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lio/casper/android/c/e/b/b/a;->cacheMillis:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lio/casper/android/c/e/b/b/a;->mCacheUntilTimestamp:J

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lio/casper/android/c/e/b/b/a;->mUsername:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lio/casper/android/c/e/b/b/a;->params:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/c/e/b/b/a;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/c/e/b/b/a;->params:Ljava/util/Map;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lio/casper/android/c/e/b/b/a;->mCacheUntilTimestamp:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/casper/android/c/e/b/b/a;->mUsername:Ljava/lang/String;

    return-object v0
.end method
