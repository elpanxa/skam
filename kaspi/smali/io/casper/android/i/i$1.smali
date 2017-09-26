.class Lio/casper/android/i/i$1;
.super Ljava/lang/Object;
.source "ImojiGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/i;


# direct methods
.method constructor <init>(Lio/casper/android/i/i;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio/casper/android/i/i$1;->this$0:Lio/casper/android/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/casper/android/i/i$1;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->onBackPressed()V

    .line 75
    return-void
.end method
