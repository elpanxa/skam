.class Lio/casper/android/l/m$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/m;->a(Lio/casper/android/l/m$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Lio/casper/android/n/a/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/m;

.field final synthetic val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;


# direct methods
.method constructor <init>(Lio/casper/android/l/m;Lio/casper/android/l/m$a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lio/casper/android/l/m$1;->this$0:Lio/casper/android/l/m;

    iput-object p2, p0, Lio/casper/android/l/m$1;->val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/h;)V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p2}, Lio/casper/android/n/a/c/h;->a()Lio/casper/android/n/a/c/b/p;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lio/casper/android/l/m$1;->this$0:Lio/casper/android/l/m;

    invoke-static {v0}, Lio/casper/android/l/m;->a(Lio/casper/android/l/m;)Lio/casper/android/n/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/c/a/e;->f()V

    .line 92
    invoke-virtual {p2}, Lio/casper/android/n/a/c/h;->a()Lio/casper/android/n/a/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/p;->a()Ljava/util/List;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_5

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/m;

    .line 98
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/m;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/m;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v0, p0, Lio/casper/android/l/m$1;->this$0:Lio/casper/android/l/m;

    invoke-static {v0}, Lio/casper/android/l/m;->a(Lio/casper/android/l/m;)Lio/casper/android/n/c/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/e;->a(Ljava/util/List;)V

    .line 107
    :cond_5
    iget-object v0, p0, Lio/casper/android/l/m$1;->val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v2, p0, Lio/casper/android/l/m$1;->val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    invoke-interface {v2, v0}, Lio/casper/android/l/m$a;->a(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p2, Lio/casper/android/n/a/c/h;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/l/m$1;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/h;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "LocationManager"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Updating GeoFilters failed with Exception"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lio/casper/android/l/m$1;->val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/casper/android/l/m$1;->val$geoFiltersUpdatedListener:Lio/casper/android/l/m$a;

    invoke-interface {v0, v3}, Lio/casper/android/l/m$a;->a(I)V

    .line 122
    :cond_0
    return-void
.end method
