.class Lio/casper/android/a/b$3;
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

.field final synthetic val$snap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method constructor <init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lio/casper/android/a/b$3;->this$0:Lio/casper/android/a/b;

    iput-object p2, p0, Lio/casper/android/a/b$3;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lio/casper/android/a/b$3;->this$0:Lio/casper/android/a/b;

    iget-object v1, p0, Lio/casper/android/a/b$3;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/a/b;->b(Lio/casper/android/n/a/c/b/w;)V

    .line 166
    return-void
.end method
