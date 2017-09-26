.class Lio/casper/android/a/c$4;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c;->a(Lio/casper/android/a/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/c;

.field final synthetic val$saveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/a/c;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lio/casper/android/a/c$4;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$4;->val$saveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lio/casper/android/a/c$4;->val$saveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 209
    iget-object v0, p0, Lio/casper/android/a/c$4;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070097

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    iget-object v0, p0, Lio/casper/android/a/c$4;->this$0:Lio/casper/android/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/c;->notifyDataSetChanged()V

    .line 211
    return-void
.end method
