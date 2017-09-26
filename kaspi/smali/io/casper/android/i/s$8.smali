.class Lio/casper/android/i/s$8;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 433
    iput-object p1, p0, Lio/casper/android/i/s$8;->this$0:Lio/casper/android/i/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lio/casper/android/i/s$8;->this$0:Lio/casper/android/i/s;

    invoke-virtual {v0}, Lio/casper/android/i/s;->a()V

    .line 437
    return-void
.end method
