.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    move-result-object v2

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$10;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    invoke-static {v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;J)V

    .line 420
    return-void
.end method
