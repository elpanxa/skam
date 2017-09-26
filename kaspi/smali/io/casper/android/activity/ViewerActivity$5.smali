.class Lio/casper/android/activity/ViewerActivity$5;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ViewerActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$5;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$5;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/ViewerActivity;->a()V

    .line 344
    return-void
.end method
