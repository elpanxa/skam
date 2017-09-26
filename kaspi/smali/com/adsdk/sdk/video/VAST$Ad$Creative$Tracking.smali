.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad$Creative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracking"
.end annotation


# instance fields
.field event:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "event"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Text;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
