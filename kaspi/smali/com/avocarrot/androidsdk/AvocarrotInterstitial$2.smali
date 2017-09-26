.class Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;
.super Ljava/lang/Object;
.source "AvocarrotInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 131
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeAd()V

    .line 135
    return-void
.end method
