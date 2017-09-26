.class Lio/casper/android/l/a$17;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lio/casper/android/activity/a/a$a;


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

.field final synthetic val$moPubView:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lio/casper/android/l/a$17;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$17;->val$moPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 497
    const-string v0, "AdManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "activityListener onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lio/casper/android/l/a$17;->val$moPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 499
    return-void
.end method
