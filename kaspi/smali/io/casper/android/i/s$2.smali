.class Lio/casper/android/i/s$2;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Lio/casper/android/l/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/s;


# direct methods
.method constructor <init>(Lio/casper/android/i/s;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lio/casper/android/i/s$2;->this$0:Lio/casper/android/i/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lio/casper/android/i/s$2;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->b(Lio/casper/android/i/s;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lio/casper/android/i/s$2;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 300
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method
