.class Lcom/startapp/android/publish/list3d/List3DActivity$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/list3d/List3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/list3d/List3DActivity;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/startapp/android/publish/list3d/List3DActivity$3;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$3;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->finish()V

    .line 205
    return-void
.end method
