.class Lio/casper/android/l/a$14;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Lio/casper/android/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$adListener:Lio/casper/android/l/a$a;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lio/casper/android/l/a$14;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$14;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public noAdFound()V
    .locals 5

    .prologue
    .line 417
    const-string v0, "AdManager"

    const-string v1, "onAdFailed network=%s type=banner"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "MOBFOX"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lio/casper/android/l/a$14;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lio/casper/android/l/a$14;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 421
    :cond_0
    return-void
.end method
