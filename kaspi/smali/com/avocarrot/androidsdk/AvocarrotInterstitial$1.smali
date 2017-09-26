.class Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;
.super Ljava/lang/Object;
.source "AvocarrotInterstitial.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/AvocarrotInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeAd()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
