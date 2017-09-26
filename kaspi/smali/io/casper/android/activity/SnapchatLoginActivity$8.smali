.class Lio/casper/android/activity/SnapchatLoginActivity$8;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iput-object p2, p0, Lio/casper/android/activity/SnapchatLoginActivity$8;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 685
    invoke-static {}, Lio/casper/android/n/b;->d()Lio/casper/android/n/b$b;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lio/casper/android/n/b$b;->a()Lio/casper/android/n/b$a;

    move-result-object v1

    .line 688
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/casper/android/activity/SnapchatLoginActivity$8$1;

    invoke-direct {v3, p0, v1, v0}, Lio/casper/android/activity/SnapchatLoginActivity$8$1;-><init>(Lio/casper/android/activity/SnapchatLoginActivity$8;Lio/casper/android/n/b$a;Lio/casper/android/n/b$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    return-void
.end method
