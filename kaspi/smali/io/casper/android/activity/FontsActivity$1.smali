.class Lio/casper/android/activity/FontsActivity$1;
.super Ljava/lang/Object;
.source "FontsActivity.java"

# interfaces
.implements Lio/casper/android/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/FontsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/FontsActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/FontsActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lio/casper/android/activity/FontsActivity$1;->this$0:Lio/casper/android/activity/FontsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v1, "font"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lio/casper/android/activity/FontsActivity$1;->this$0:Lio/casper/android/activity/FontsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lio/casper/android/activity/FontsActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lio/casper/android/activity/FontsActivity$1;->this$0:Lio/casper/android/activity/FontsActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/FontsActivity;->finish()V

    .line 73
    return-void
.end method
