.class Lio/casper/android/a/a/h$3;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/h;

.field final synthetic val$storyHelperContainer:Lio/casper/android/m/a;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;Lio/casper/android/m/a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lio/casper/android/a/a/h$3;->this$0:Lio/casper/android/a/a/h;

    iput-object p2, p0, Lio/casper/android/a/a/h$3;->val$storyHelperContainer:Lio/casper/android/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/a/h$3;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/MyStoriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "container"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lio/casper/android/a/a/h$3;->val$storyHelperContainer:Lio/casper/android/m/a;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lio/casper/android/a/a/h$3;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
