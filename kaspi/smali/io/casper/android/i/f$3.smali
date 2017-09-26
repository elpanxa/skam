.class Lio/casper/android/i/f$3;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/f;


# direct methods
.method constructor <init>(Lio/casper/android/i/f;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v0, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    sget-object v2, Lio/casper/android/n/c/a/d$a;->TYPE:Lio/casper/android/n/c/a/d$a;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/casper/android/n/c/a/d;->b(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 188
    iget-object v0, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    sget-object v3, Lio/casper/android/n/c/a/d$a;->TYPE:Lio/casper/android/n/c/a/d$a;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/casper/android/n/c/a/d;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 190
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 191
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->e(Lio/casper/android/i/f;)Lio/casper/android/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/h;->a()Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v5, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v5}, Lio/casper/android/i/f;->b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    sget-object v5, Lio/casper/android/n/a/c/b/i$a;->BESTS:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v5}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->e(Lio/casper/android/i/f;)Lio/casper/android/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/h;->b()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    iget-object v5, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v5}, Lio/casper/android/i/f;->b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    .line 206
    sget-object v5, Lio/casper/android/n/a/c/b/i$a;->RECENTS:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v5}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 214
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->j()Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 222
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 223
    sget-object v3, Lio/casper/android/n/a/c/b/i$a;->TYPE:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v3}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    .line 226
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_6
    iget-object v0, p0, Lio/casper/android/i/f$3;->this$0:Lio/casper/android/i/f;

    invoke-static {v0, v1}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;Ljava/util/List;)V

    .line 232
    return-void
.end method
