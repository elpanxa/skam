.class Lio/casper/android/n/b/a$4;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/b/a;


# direct methods
.method constructor <init>(Lio/casper/android/n/b/a;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lio/casper/android/n/b/a$4;->this$0:Lio/casper/android/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 276
    const/4 v0, 0x1

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v1, p0, Lio/casper/android/n/b/a$4;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v1}, Lio/casper/android/n/b/a;->k(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/n/b/b/a;->a()Lio/casper/android/n/b/d/n;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lio/casper/android/n/b/a$4;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2, v1}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/d/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lio/casper/android/n/b/a$4;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v1}, Lio/casper/android/n/b/a;->b()V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method
