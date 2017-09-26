.class Lio/casper/android/activity/EmojiAppleActivity$1;
.super Ljava/lang/Object;
.source "EmojiAppleActivity.java"

# interfaces
.implements Lio/casper/android/i/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EmojiAppleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EmojiAppleActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EmojiAppleActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/casper/android/activity/EmojiAppleActivity$1;->this$0:Lio/casper/android/activity/EmojiAppleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    const-string v1, "sticker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lio/casper/android/activity/EmojiAppleActivity$1;->this$0:Lio/casper/android/activity/EmojiAppleActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lio/casper/android/activity/EmojiAppleActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    iget-object v0, p0, Lio/casper/android/activity/EmojiAppleActivity$1;->this$0:Lio/casper/android/activity/EmojiAppleActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EmojiAppleActivity;->finish()V

    .line 57
    return-void
.end method
