.class Lio/casper/android/ui/VerticalViewPager$3;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/VerticalViewPager;


# direct methods
.method constructor <init>(Lio/casper/android/ui/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lio/casper/android/ui/VerticalViewPager$3;->this$0:Lio/casper/android/ui/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lio/casper/android/ui/VerticalViewPager$3;->this$0:Lio/casper/android/ui/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/casper/android/ui/VerticalViewPager;->a(Lio/casper/android/ui/VerticalViewPager;I)V

    .line 215
    iget-object v0, p0, Lio/casper/android/ui/VerticalViewPager$3;->this$0:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0}, Lio/casper/android/ui/VerticalViewPager;->c()V

    .line 216
    return-void
.end method
