.class Lio/casper/android/i/p$6;
.super Lio/casper/android/ui/e;
.source "SnapsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/p;


# direct methods
.method constructor <init>(Lio/casper/android/i/p;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lio/casper/android/i/p$6;->this$0:Lio/casper/android/i/p;

    invoke-direct {p0}, Lio/casper/android/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lio/casper/android/i/p$6;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->c(Lio/casper/android/i/p;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/i/p$6;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->d(Lio/casper/android/i/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lio/casper/android/i/p$6;->this$0:Lio/casper/android/i/p;

    iget-object v1, p0, Lio/casper/android/i/p$6;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->e(Lio/casper/android/i/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
