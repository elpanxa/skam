.class Lio/casper/android/l/a$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->a(Ljava/lang/String;Lio/casper/android/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$adListener:Lio/casper/android/l/a$a;

.field final synthetic val$adManager:Lcom/adsdk/sdk/AdManager;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lio/casper/android/l/a$4;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    iput-object p3, p0, Lio/casper/android/l/a$4;->val$adManager:Lcom/adsdk/sdk/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->a()V

    .line 646
    :cond_0
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 653
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    .line 654
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public noAdFound()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lio/casper/android/l/a$4;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 666
    :cond_0
    return-void
.end method
