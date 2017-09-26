.class Lcom/adsdk/sdk/mraid/MraidAbstractController;
.super Ljava/lang/Object;
.source "MraidAbstractController.java"


# instance fields
.field private final mMraidView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 41
    return-void
.end method


# virtual methods
.method public getMraidView()Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method
