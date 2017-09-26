.class public Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicLogLevel;
.super Ljava/lang/Object;
.source "SupersonicLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupersonicLogLevel"
.end annotation


# static fields
.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x1

.field public static final VERBOSE:I = 0x0

.field public static final WARNING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/logger/SupersonicLogger;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/logger/SupersonicLogger;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicLogLevel;->this$0:Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
