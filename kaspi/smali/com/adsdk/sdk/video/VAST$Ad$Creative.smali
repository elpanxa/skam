.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$CompanionAds;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Creative"
.end annotation


# instance fields
.field adId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "AdID"
        required = false
    .end annotation
.end field

.field apiFramework:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "apiFramework"
        required = false
    .end annotation
.end field

.field companionAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$CompanionAds;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "CompanionAds"
        required = false
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = false
    .end annotation
.end field

.field linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Linear"
        required = false
    .end annotation
.end field

.field nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "NonLinearAds"
        required = false
    .end annotation
.end field

.field sequence:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "sequence"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
