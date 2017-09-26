.class Lio/casper/android/activity/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;JLcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;J)V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {p4}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/s;->e(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v1, v1, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 272
    :goto_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 273
    new-instance v0, Lio/casper/android/b/a/g;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/g;-><init>(Landroid/content/Context;)V

    const-string v1, "Switch"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/g;->a(Ljava/lang/String;)Lio/casper/android/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 275
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$12;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    goto :goto_0
.end method
