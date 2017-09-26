.class Lio/casper/android/ui/j$1;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/j;


# direct methods
.method constructor <init>(Lio/casper/android/ui/j;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lio/casper/android/ui/j$1;->this$0:Lio/casper/android/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lio/casper/android/ui/j$1;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->a(Lio/casper/android/ui/j;)V

    .line 418
    iget-object v0, p0, Lio/casper/android/ui/j$1;->this$0:Lio/casper/android/ui/j;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lio/casper/android/ui/j;->a(I)V

    .line 419
    return-void
.end method
