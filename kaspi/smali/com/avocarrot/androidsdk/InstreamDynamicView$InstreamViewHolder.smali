.class public Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;
.super Ljava/lang/Object;
.source "InstreamView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/InstreamDynamicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstreamViewHolder"
.end annotation


# instance fields
.field public ctaBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_cta_button"
    .end annotation
.end field

.field public description:Landroid/widget/TextView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_description"
    .end annotation
.end field

.field public icon:Landroid/widget/ImageView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_icon"
    .end annotation
.end field

.field public ids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public image:Landroid/widget/ImageView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_image"
    .end annotation
.end field

.field public rating:Landroid/widget/ImageView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_rating"
    .end annotation
.end field

.field public title:Landroid/widget/TextView;
    .annotation runtime Lcom/avocarrot/json2view/DynamicViewId;
        id = "avo_title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method
