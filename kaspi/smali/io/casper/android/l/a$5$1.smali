.class Lio/casper/android/l/a$5$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a$5;->onRevMobAdReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/l/a$5;


# direct methods
.method constructor <init>(Lio/casper/android/l/a$5;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lio/casper/android/l/a$5$1;->this$1:Lio/casper/android/l/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lio/casper/android/l/a$5$1;->this$1:Lio/casper/android/l/a$5;

    iget-object v0, v0, Lio/casper/android/l/a$5;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lio/casper/android/l/a$5$1;->this$1:Lio/casper/android/l/a$5;

    iget-object v0, v0, Lio/casper/android/l/a$5;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 689
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/a$5$1;->this$1:Lio/casper/android/l/a$5;

    iget-object v0, v0, Lio/casper/android/l/a$5;->this$0:Lio/casper/android/l/a;

    invoke-static {v0}, Lio/casper/android/l/a;->c(Lio/casper/android/l/a;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->show()V

    .line 690
    return-void
.end method
