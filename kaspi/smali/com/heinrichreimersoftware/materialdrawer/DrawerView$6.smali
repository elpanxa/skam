.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$6;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->init(Landroid/content/Context;)V
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
    .line 204
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$6;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$6;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->toggleProfileList()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    .line 208
    return-void
.end method
