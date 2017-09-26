.class Lio/casper/android/ui/EndlessGridView$1;
.super Lio/casper/android/ui/h;
.source "EndlessGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/ui/EndlessGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/EndlessGridView;


# direct methods
.method constructor <init>(Lio/casper/android/ui/EndlessGridView;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lio/casper/android/ui/EndlessGridView$1;->this$0:Lio/casper/android/ui/EndlessGridView;

    invoke-direct {p0}, Lio/casper/android/ui/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/ui/EndlessGridView$1;->this$0:Lio/casper/android/ui/EndlessGridView;

    invoke-static {v0}, Lio/casper/android/ui/EndlessGridView;->a(Lio/casper/android/ui/EndlessGridView;)Lio/casper/android/ui/EndlessGridView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lio/casper/android/ui/EndlessGridView$1;->this$0:Lio/casper/android/ui/EndlessGridView;

    invoke-static {v0}, Lio/casper/android/ui/EndlessGridView;->a(Lio/casper/android/ui/EndlessGridView;)Lio/casper/android/ui/EndlessGridView$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/ui/EndlessGridView$a;->a()V

    .line 29
    :cond_0
    return-void
.end method
