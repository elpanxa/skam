.class Lio/casper/android/activity/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$1;->onOfferwallAdCredited(IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$1;

.field final synthetic val$localCredits:J


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$1;J)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$1$1;->this$1:Lio/casper/android/activity/MainActivity$1;

    iput-wide p2, p0, Lio/casper/android/activity/MainActivity$1$1;->val$localCredits:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$1$1;->this$1:Lio/casper/android/activity/MainActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$1;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$1$1;->this$1:Lio/casper/android/activity/MainActivity$1;

    iget-object v1, v1, Lio/casper/android/activity/MainActivity$1;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070091

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lio/casper/android/activity/MainActivity$1$1;->val$localCredits:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method
