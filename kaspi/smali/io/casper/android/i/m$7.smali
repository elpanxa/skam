.class Lio/casper/android/i/m$7;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/m;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/casper/android/i/m;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lio/casper/android/i/m$7;->this$0:Lio/casper/android/i/m;

    iput-object p2, p0, Lio/casper/android/i/m$7;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lio/casper/android/i/m$7;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->d()V

    .line 654
    iget-object v0, p0, Lio/casper/android/i/m$7;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lio/casper/android/i/m$7;->this$0:Lio/casper/android/i/m;

    invoke-static {v2}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/casper/android/a/a/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method
