.class Lcom/adsdk/sdk/mraid/MraidDisplayController$5;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;->showUserDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->downloadImage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$8(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V

    .line 445
    return-void
.end method
