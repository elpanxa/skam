.class public final enum Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;
.super Ljava/lang/Enum;
.source "AvocarrotUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/AvocarrotUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

.field public static final enum FEMALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

.field public static final enum MALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

.field public static final enum OTHER:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    const-string v1, "MALE"

    const-string v2, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->MALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    .line 9
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    const-string v1, "FEMALE"

    const-string v2, "F"

    invoke-direct {v0, v1, v4, v2}, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->FEMALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    .line 10
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    const-string v1, "OTHER"

    const-string v2, "O"

    invoke-direct {v0, v1, v5, v2}, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->OTHER:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    sget-object v1, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->MALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->FEMALE:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->OTHER:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->$VALUES:[Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->text:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->$VALUES:[Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;->text:Ljava/lang/String;

    return-object v0
.end method
