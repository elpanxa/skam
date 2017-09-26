.class Lcom/adsdk/sdk/mraid/MraidBrowser$6;
.super Ljava/lang/Object;
.source "MraidBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidBrowser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$6;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$6;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->finish()V

    .line 198
    return-void
.end method
