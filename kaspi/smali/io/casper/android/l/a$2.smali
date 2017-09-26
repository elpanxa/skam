.class Lio/casper/android/l/a$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lio/casper/android/l/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->b(Lio/casper/android/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$adListener:Lio/casper/android/l/a$a;

.field final synthetic val$networkOrderInterstitialIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lio/casper/android/l/a$2;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$2;->val$adListener:Lio/casper/android/l/a$a;

    iput-object p3, p0, Lio/casper/android/l/a$2;->val$networkOrderInterstitialIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lio/casper/android/l/a$2;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lio/casper/android/l/a$2;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->a()V

    .line 559
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lio/casper/android/l/a$2;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lio/casper/android/l/a$2;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 566
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lio/casper/android/l/a$2;->val$networkOrderInterstitialIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lio/casper/android/l/a$2;->this$0:Lio/casper/android/l/a;

    iget-object v0, p0, Lio/casper/android/l/a$2;->val$networkOrderInterstitialIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lio/casper/android/l/a$2;->this$0:Lio/casper/android/l/a;

    invoke-static {v2}, Lio/casper/android/l/a;->b(Lio/casper/android/l/a;)Lio/casper/android/l/a$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/casper/android/l/a;->a(Ljava/lang/String;Lio/casper/android/l/a$a;)V

    .line 573
    :cond_0
    return-void
.end method
