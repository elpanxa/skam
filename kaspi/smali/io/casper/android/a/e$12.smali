.class Lio/casper/android/a/e$12;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e;->a(Lio/casper/android/a/e$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/e;


# direct methods
.method constructor <init>(Lio/casper/android/a/e;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lio/casper/android/a/e$12;->this$0:Lio/casper/android/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lio/casper/android/a/e$12;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070106

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    return-void
.end method
