.class Lio/casper/android/a/b$4;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/b;->a(Lio/casper/android/a/b$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/b;


# direct methods
.method constructor <init>(Lio/casper/android/a/b;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lio/casper/android/a/b$4;->this$0:Lio/casper/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lio/casper/android/a/b$4;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700cd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method
