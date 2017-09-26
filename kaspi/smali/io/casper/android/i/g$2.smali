.class Lio/casper/android/i/g$2;
.super Ljava/lang/Object;
.source "FriendsRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/g;


# direct methods
.method constructor <init>(Lio/casper/android/i/g;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lio/casper/android/i/g$2;->this$0:Lio/casper/android/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lio/casper/android/i/g$2;->this$0:Lio/casper/android/i/g;

    invoke-static {v0}, Lio/casper/android/i/g;->a(Lio/casper/android/i/g;)Lio/casper/android/n/c/a/a;

    move-result-object v0

    sget-object v2, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/casper/android/n/c/a/a;->b(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lio/casper/android/i/g$2;->this$0:Lio/casper/android/i/g;

    invoke-static {v2}, Lio/casper/android/i/g;->a(Lio/casper/android/i/g;)Lio/casper/android/n/c/a/a;

    move-result-object v2

    sget-object v3, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/casper/android/n/c/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 98
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 104
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    sget-object v3, Lio/casper/android/n/a/c/b/i$a;->TYPE:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v3}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/g$2;->this$0:Lio/casper/android/i/g;

    invoke-static {v0, v1}, Lio/casper/android/i/g;->a(Lio/casper/android/i/g;Ljava/util/List;)V

    .line 118
    return-void
.end method
