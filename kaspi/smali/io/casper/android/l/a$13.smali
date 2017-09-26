.class Lio/casper/android/l/a$13;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdManager.java"


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
    .line 360
    iput-object p1, p0, Lio/casper/android/l/a$13;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$13;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 5

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 367
    const-string v0, "AdManager"

    const-string v1, "onAdFailed network=%s type=banner"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ADMOB"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lio/casper/android/l/a$13;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lio/casper/android/l/a$13;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 373
    :cond_0
    return-void
.end method
