.class Lio/casper/android/a/c$2;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c;->a(Lio/casper/android/a/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/c;

.field final synthetic val$customFont:Lio/casper/android/c/b/b/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lio/casper/android/a/c$2;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$2;->val$customFont:Lio/casper/android/c/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lio/casper/android/a/c$2;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->a(Lio/casper/android/a/c;)Lio/casper/android/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/c$2;->val$customFont:Lio/casper/android/c/b/b/a/a;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/casper/android/a/c$a;->a(Ljava/io/File;)V

    .line 113
    return-void
.end method
