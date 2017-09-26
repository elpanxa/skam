.class Lio/casper/android/i/c$3;
.super Ljava/lang/Object;
.source "EmojiPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/c;


# direct methods
.method constructor <init>(Lio/casper/android/i/c;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lio/casper/android/i/c$3;->this$0:Lio/casper/android/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lio/casper/android/i/c$3;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->d(Lio/casper/android/i/c;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->onBackPressed()V

    .line 155
    return-void
.end method
