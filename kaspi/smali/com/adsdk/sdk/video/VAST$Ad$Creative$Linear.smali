.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad$Creative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Linear"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$ClickTracking;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$CustomClick;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Linear"
.end annotation


# instance fields
.field duration:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Duration"
    .end annotation
.end field

.field mediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "MediaFiles"
    .end annotation
.end field

.field skipoffset:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "skipoffset"
        required = false
    .end annotation
.end field

.field trackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "TrackingEvents"
        required = false
    .end annotation
.end field

.field videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "VideoClicks"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
