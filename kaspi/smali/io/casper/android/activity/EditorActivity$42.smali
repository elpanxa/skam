.class Lio/casper/android/activity/EditorActivity$42;
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
    .line 1665
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$42;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$42;->this$0:Lio/casper/android/activity/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(I)V

    .line 1669
    new-instance v0, Lio/casper/android/b/a/b;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$42;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/b;-><init>(Landroid/content/Context;)V

    const-string v1, "Black and White"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/b;->a(Ljava/lang/String;)Lio/casper/android/b/a/b;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 1670
    return-void
.end method
