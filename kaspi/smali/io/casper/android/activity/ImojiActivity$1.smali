.class Lio/casper/android/activity/ImojiActivity$1;
.super Ljava/lang/Object;
.source "ImojiActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ImojiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ImojiActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ImojiActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/casper/android/activity/ImojiActivity$1;->this$0:Lio/casper/android/activity/ImojiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity$1;->this$0:Lio/casper/android/activity/ImojiActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/ImojiActivity;->a()V

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
