.class Lio/casper/android/i/m$3$1;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m$3;->a(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/m$3;


# direct methods
.method constructor <init>(Lio/casper/android/i/m$3;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lio/casper/android/i/m$3$1;->this$1:Lio/casper/android/i/m$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lio/casper/android/i/m$3$1;->this$1:Lio/casper/android/i/m$3;

    iget-object v0, v0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->l(Lio/casper/android/i/m;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 287
    return-void
.end method
