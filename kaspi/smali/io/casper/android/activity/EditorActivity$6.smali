.class Lio/casper/android/activity/EditorActivity$6;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$6;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 847
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/activity/EditorActivity$6$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$6$1;-><init>(Lio/casper/android/activity/EditorActivity$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 857
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 859
    return-void
.end method
