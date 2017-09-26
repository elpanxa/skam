.class Lio/casper/android/i/m$4;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/m;


# direct methods
.method constructor <init>(Lio/casper/android/i/m;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v0, Lio/casper/android/a/b/b;

    invoke-direct {v0}, Lio/casper/android/a/b/b;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lio/casper/android/a/b/c;

    invoke-direct {v0}, Lio/casper/android/a/b/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->m(Lio/casper/android/i/m;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d;->e()Ljava/util/List;

    move-result-object v2

    .line 307
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 309
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->n(Lio/casper/android/i/m;)Lio/casper/android/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/h;->c()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/casper/android/a/a/f;->a(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->m(Lio/casper/android/i/m;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lio/casper/android/n/a/c/b/i;

    invoke-direct {v0}, Lio/casper/android/n/a/c/b/i;-><init>()V

    .line 318
    invoke-virtual {v0, v3}, Lio/casper/android/n/a/c/b/i;->e(Ljava/lang/String;)V

    .line 319
    const-string v3, ""

    invoke-virtual {v0, v3}, Lio/casper/android/n/a/c/b/i;->c(Ljava/lang/String;)V

    .line 322
    :cond_0
    sget-object v3, Lio/casper/android/n/a/c/b/i$a;->REPLY:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v3}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    .line 324
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->n(Lio/casper/android/i/m;)Lio/casper/android/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/h;->a()Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v4, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v4}, Lio/casper/android/i/m;->m(Lio/casper/android/i/m;)Lio/casper/android/n/c/a/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_2

    .line 332
    sget-object v4, Lio/casper/android/n/a/c/b/i$a;->BESTS:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v4}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->n(Lio/casper/android/i/m;)Lio/casper/android/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/h;->b()Ljava/util/List;

    move-result-object v0

    .line 337
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    iget-object v4, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v4}, Lio/casper/android/i/m;->m(Lio/casper/android/i/m;)Lio/casper/android/n/c/a/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_4

    .line 341
    sget-object v4, Lio/casper/android/n/a/c/b/i$a;->RECENTS:Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0, v4}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 347
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->j()Z

    move-result v3

    if-nez v3, :cond_6

    .line 351
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 356
    :sswitch_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 364
    :cond_7
    iget-object v0, p0, Lio/casper/android/i/m$4;->this$0:Lio/casper/android/i/m;

    invoke-static {v0, v1}, Lio/casper/android/i/m;->a(Lio/casper/android/i/m;Ljava/util/List;)V

    .line 366
    return-void

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
