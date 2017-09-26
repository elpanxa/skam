.class Lio/casper/android/l/a$9;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->b(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$fallbackAd:Lio/casper/android/c/b/b/a/a/a/b;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/c/b/b/a/a/a/b;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lio/casper/android/l/a$9;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$9;->val$fallbackAd:Lio/casper/android/c/b/b/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 847
    iget-object v0, p0, Lio/casper/android/l/a$9;->this$0:Lio/casper/android/l/a;

    iget-object v0, v0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/l/a$9;->val$fallbackAd:Lio/casper/android/c/b/b/a/a/a/b;

    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 848
    return-void
.end method
