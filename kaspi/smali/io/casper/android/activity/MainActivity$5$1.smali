.class Lio/casper/android/activity/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/casper/android/h/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$5;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$5;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$5;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$5$1;->this$1:Lio/casper/android/activity/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$5$1;->this$1:Lio/casper/android/activity/MainActivity$5;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$5;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->g(Lio/casper/android/activity/MainActivity;)Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->showOfferwall()V

    .line 432
    return-void
.end method
