.class Lio/casper/android/i/g$3;
.super Ljava/lang/Object;
.source "FriendsRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/g;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/g;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/casper/android/i/g;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lio/casper/android/i/g$3;->this$0:Lio/casper/android/i/g;

    iput-object p2, p0, Lio/casper/android/i/g$3;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lio/casper/android/i/g$3;->this$0:Lio/casper/android/i/g;

    invoke-static {v0}, Lio/casper/android/i/g;->b(Lio/casper/android/i/g;)Lio/casper/android/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/d;->d()V

    .line 126
    iget-object v0, p0, Lio/casper/android/i/g$3;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lio/casper/android/i/g$3;->this$0:Lio/casper/android/i/g;

    invoke-static {v2}, Lio/casper/android/i/g;->b(Lio/casper/android/i/g;)Lio/casper/android/a/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/casper/android/a/a/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
