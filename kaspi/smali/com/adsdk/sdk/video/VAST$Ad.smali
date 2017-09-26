.class public Lcom/adsdk/sdk/video/VAST$Ad;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/VAST$Ad$AdSystem;,
        Lcom/adsdk/sdk/video/VAST$Ad$Creative;,
        Lcom/adsdk/sdk/video/VAST$Ad$Impression;,
        Lcom/adsdk/sdk/video/VAST$Ad$InLine;,
        Lcom/adsdk/sdk/video/VAST$Ad$Wrapper;
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Ad"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = false
    .end annotation
.end field

.field inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "InLine"
        required = false
    .end annotation
.end field

.field sequence:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "sequence"
        required = false
    .end annotation
.end field

.field wrapper:Lcom/adsdk/sdk/video/VAST$Ad$Wrapper;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Wrapper"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
