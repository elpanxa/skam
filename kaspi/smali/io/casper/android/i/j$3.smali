.class Lio/casper/android/i/j$3;
.super Ljava/lang/Object;
.source "ImojiPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/j;


# direct methods
.method constructor <init>(Lio/casper/android/i/j;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lio/casper/android/i/j$3;->this$0:Lio/casper/android/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/casper/android/i/j$3;->this$0:Lio/casper/android/i/j;

    invoke-static {v0}, Lio/casper/android/i/j;->a(Lio/casper/android/i/j;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->onBackPressed()V

    .line 103
    return-void
.end method
