.class public Lcom/supersonic/mediationsdk/utils/SupersonicConstants$Gender;
.super Ljava/lang/Object;
.source "SupersonicConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/utils/SupersonicConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Gender"
.end annotation


# static fields
.field public static final FEMALE:Ljava/lang/String; = "female"

.field public static final MALE:Ljava/lang/String; = "male"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/utils/SupersonicConstants;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/utils/SupersonicConstants;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/supersonic/mediationsdk/utils/SupersonicConstants$Gender;->this$0:Lcom/supersonic/mediationsdk/utils/SupersonicConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
