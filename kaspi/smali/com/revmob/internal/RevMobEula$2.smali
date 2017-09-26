.class Lcom/revmob/internal/RevMobEula$2;
.super Ljava/lang/Object;
.source "RevMobEula.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/RevMobEula;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/RevMobEula;


# direct methods
.method constructor <init>(Lcom/revmob/internal/RevMobEula;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/revmob/internal/RevMobEula$2;->this$0:Lcom/revmob/internal/RevMobEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula$2;->this$0:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->acceptAndDismiss()V

    .line 57
    return-void
.end method
