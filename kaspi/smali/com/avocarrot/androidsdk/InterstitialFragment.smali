.class public Lcom/avocarrot/androidsdk/InterstitialFragment;
.super Landroid/app/Fragment;
.source "InterstitialFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/avocarrot/androidsdk/InterstitialFragment;->mView:Landroid/view/View;

    .line 31
    return-void
.end method

.method public static newInstance(Landroid/view/View;)Lcom/avocarrot/androidsdk/InterstitialFragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/avocarrot/androidsdk/InterstitialFragment;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/InterstitialFragment;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avocarrot/androidsdk/InterstitialFragment;->mView:Landroid/view/View;

    return-object v0
.end method
