.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;
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
    .line 376
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$9;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 380
    return-void
.end method
