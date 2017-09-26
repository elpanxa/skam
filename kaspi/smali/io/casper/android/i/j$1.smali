.class Lio/casper/android/i/j$1;
.super Ljava/lang/Object;
.source "ImojiPickerFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 79
    iput-object p1, p0, Lio/casper/android/i/j$1;->this$0:Lio/casper/android/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/casper/android/i/j$1;->this$0:Lio/casper/android/i/j;

    invoke-virtual {v0}, Lio/casper/android/i/j;->a()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
