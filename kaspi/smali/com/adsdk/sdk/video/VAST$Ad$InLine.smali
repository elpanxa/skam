.class public Lcom/adsdk/sdk/video/VAST$Ad$InLine;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InLine"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "InLine"
.end annotation


# instance fields
.field adSystem:Lcom/adsdk/sdk/video/VAST$Ad$AdSystem;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "AdSystem"
    .end annotation
.end field

.field adTitle:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "AdTitle"
    .end annotation
.end field

.field advertiser:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Advertiser"
        required = false
    .end annotation
.end field

.field creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "Creatives"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Description"
        required = false
    .end annotation
.end field

.field error:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Error"
        required = false
    .end annotation
.end field

.field impressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Impression;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
