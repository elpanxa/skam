.class public Lio/casper/android/c/b/b/a/a/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private advertising:Lio/casper/android/c/b/b/a/a/a/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advertising"
    .end annotation
.end field

.field private analytics:Lio/casper/android/c/b/b/a/a/b/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics"
    .end annotation
.end field

.field private auth:Lio/casper/android/c/b/b/a/a/c/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth"
    .end annotation
.end field

.field private debugSettings:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug_settings"
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

.field private fetchOnLaunch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fetch_on_launch"
    .end annotation
.end field

.field private google:Lio/casper/android/c/b/b/a/a/d/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google"
    .end annotation
.end field

.field private imoji:Lio/casper/android/c/b/b/a/a/e/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imoji"
    .end annotation
.end field

.field private notifications:Lio/casper/android/c/b/b/a/a/f/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notifications"
    .end annotation
.end field

.field private routing:Lio/casper/android/c/b/b/a/a/g/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "routing"
    .end annotation
.end field

.field private snapchat:Lio/casper/android/c/b/b/a/a/h/f;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snapchat"
    .end annotation
.end field

.field private superSonic:Lio/casper/android/c/b/b/a/a/i/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "supersonic"
    .end annotation
.end field

.field private updates:Lio/casper/android/c/b/b/a/a/j/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/c/b/b/a/a/a/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->advertising:Lio/casper/android/c/b/b/a/a/a/a;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/b/a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->analytics:Lio/casper/android/c/b/b/a/a/b/a;

    return-object v0
.end method

.method public c()Lio/casper/android/c/b/b/a/a/e/a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->imoji:Lio/casper/android/c/b/b/a/a/e/a;

    return-object v0
.end method

.method public d()Lio/casper/android/c/b/b/a/a/g/b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->routing:Lio/casper/android/c/b/b/a/a/g/b;

    return-object v0
.end method

.method public e()Lio/casper/android/c/b/b/a/a/j/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->updates:Lio/casper/android/c/b/b/a/a/j/a;

    return-object v0
.end method

.method public f()Lio/casper/android/c/b/b/a/a/d/c;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->google:Lio/casper/android/c/b/b/a/a/d/c;

    return-object v0
.end method

.method public g()Lio/casper/android/c/b/b/a/a/h/f;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->snapchat:Lio/casper/android/c/b/b/a/a/h/f;

    return-object v0
.end method

.method public h()Lio/casper/android/c/b/b/a/a/i/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->superSonic:Lio/casper/android/c/b/b/a/a/i/b;

    return-object v0
.end method

.method public i()Lio/casper/android/c/b/b/a/a/c/a;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->auth:Lio/casper/android/c/b/b/a/a/c/a;

    return-object v0
.end method

.method public j()Lio/casper/android/c/b/b/a/a/f/a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->notifications:Lio/casper/android/c/b/b/a/a/f/a;

    return-object v0
.end method

.method public k()Ljava/util/Map;
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
    .line 96
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a;->debugSettings:Ljava/util/Map;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/a;->fetchOnLaunch:Z

    return v0
.end method
