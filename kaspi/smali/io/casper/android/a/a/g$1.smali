.class Lio/casper/android/a/a/g$1;
.super Ljava/lang/Object;
.source "SnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/g;

.field final synthetic val$conversation:Lio/casper/android/n/a/c/b/f;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/g;Lio/casper/android/n/a/c/b/f;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lio/casper/android/a/a/g$1;->this$0:Lio/casper/android/a/a/g;

    iput-object p2, p0, Lio/casper/android/a/a/g$1;->val$conversation:Lio/casper/android/n/a/c/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/a/g$1;->this$0:Lio/casper/android/a/a/g;

    iget-object v1, v1, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "conversation"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lio/casper/android/a/a/g$1;->val$conversation:Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lio/casper/android/a/a/g$1;->this$0:Lio/casper/android/a/a/g;

    iget-object v1, v1, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
