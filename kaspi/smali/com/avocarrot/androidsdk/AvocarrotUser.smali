.class public Lcom/avocarrot/androidsdk/AvocarrotUser;
.super Ljava/lang/Object;
.source "AvocarrotUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;
    }
.end annotation


# static fields
.field private static gender:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

.field private static yearOfBirth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser;->gender:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    .line 35
    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser;->yearOfBirth:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getGender()Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser;->gender:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    return-object v0
.end method

.method public static getYearOfBirth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/avocarrot/androidsdk/AvocarrotUser;->yearOfBirth:Ljava/lang/Integer;

    return-object v0
.end method

.method public static setAge(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/androidsdk/AvocarrotUser;->setYearOfBirth(Ljava/lang/Integer;)V

    .line 42
    return-void
.end method

.method public static setGender(Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/avocarrot/androidsdk/AvocarrotUser;->gender:Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    .line 29
    return-void
.end method

.method public static setYearOfBirth(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/avocarrot/androidsdk/AvocarrotUser;->yearOfBirth:Ljava/lang/Integer;

    .line 39
    return-void
.end method
