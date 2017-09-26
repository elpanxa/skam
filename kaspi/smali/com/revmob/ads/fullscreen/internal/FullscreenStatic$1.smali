.class Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;
.super Ljava/lang/Object;
.source "FullscreenStatic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;

.field final synthetic val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;

    iput-object p2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;->val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic$1;->val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->onClick()Z

    .line 99
    return-void
.end method
