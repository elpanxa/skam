.class public Lcom/revmob/RevMobConstants;
.super Ljava/lang/Object;
.source "RevMobConstants.java"


# static fields
.field public static ENCRYPTION:Ljava/lang/Boolean;

.field public static REVMOB_ENCRYPTION_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/revmob/RevMobConstants;->ENCRYPTION:Ljava/lang/Boolean;

    .line 5
    const-string v0, "1"

    sput-object v0, Lcom/revmob/RevMobConstants;->REVMOB_ENCRYPTION_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
