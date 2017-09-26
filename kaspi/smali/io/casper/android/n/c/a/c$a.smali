.class public final enum Lio/casper/android/n/c/a/c$a;
.super Ljava/lang/Enum;
.source "FriendStoriesTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/c$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/c$a;

.field public static final enum CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/c$a;

.field public static final enum CLIENT_ID:Lio/casper/android/n/c/a/c$a;

.field public static final enum DOWNLOAD_STATE:Lio/casper/android/n/c/a/c$a;

.field public static final enum FLUSHABLE_STORY_ID:Lio/casper/android/n/c/a/c$a;

.field public static final enum ID:Lio/casper/android/n/c/a/c$a;

.field public static final enum IS_SHARED:Lio/casper/android/n/c/a/c$a;

.field public static final enum IS_VIEWED:Lio/casper/android/n/c/a/c$a;

.field public static final enum MEDIA_ID:Lio/casper/android/n/c/a/c$a;

.field public static final enum MEDIA_IV:Lio/casper/android/n/c/a/c$a;

.field public static final enum MEDIA_KEY:Lio/casper/android/n/c/a/c$a;

.field public static final enum MEDIA_TYPE:Lio/casper/android/n/c/a/c$a;

.field public static final enum NEEDS_AUTH:Lio/casper/android/n/c/a/c$a;

.field public static final enum THUMBNAIL_IV:Lio/casper/android/n/c/a/c$a;

.field public static final enum TIME:Lio/casper/android/n/c/a/c$a;

.field public static final enum TIMESTAMP:Lio/casper/android/n/c/a/c$a;

.field public static final enum TIME_LEFT:Lio/casper/android/n/c/a/c$a;

.field public static final enum USERNAME:Lio/casper/android/n/c/a/c$a;

.field public static final enum ZIPPED:Lio/casper/android/n/c/a/c$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 18
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->ID:Lio/casper/android/n/c/a/c$a;

    .line 19
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "USERNAME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "username"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->USERNAME:Lio/casper/android/n/c/a/c$a;

    .line 20
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "client_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->CLIENT_ID:Lio/casper/android/n/c/a/c$a;

    .line 21
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->TIMESTAMP:Lio/casper/android/n/c/a/c$a;

    .line 22
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "MEDIA_ID"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "media_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_ID:Lio/casper/android/n/c/a/c$a;

    .line 23
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "MEDIA_KEY"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "media_key"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_KEY:Lio/casper/android/n/c/a/c$a;

    .line 24
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "MEDIA_IV"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "media_iv"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_IV:Lio/casper/android/n/c/a/c$a;

    .line 25
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "THUMBNAIL_IV"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "thumbnail_iv"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/c$a;

    .line 26
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "MEDIA_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "media_type"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/c$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "TIME"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "time"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->TIME:Lio/casper/android/n/c/a/c$a;

    .line 28
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "CAPTION_TEXT_DISPLAY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "caption_text_display"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/c$a;

    .line 29
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "ZIPPED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "zipped"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->ZIPPED:Lio/casper/android/n/c/a/c$a;

    .line 30
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "TIME_LEFT"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "time_left"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->TIME_LEFT:Lio/casper/android/n/c/a/c$a;

    .line 31
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "NEEDS_AUTH"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "needs_auth"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/c$a;

    .line 32
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "IS_SHARED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "is_shared"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->IS_SHARED:Lio/casper/android/n/c/a/c$a;

    .line 33
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "IS_VIEWED"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "is_viewed"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->IS_VIEWED:Lio/casper/android/n/c/a/c$a;

    .line 34
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "DOWNLOAD_STATE"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "download_state"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->DOWNLOAD_STATE:Lio/casper/android/n/c/a/c$a;

    .line 35
    new-instance v0, Lio/casper/android/n/c/a/c$a;

    const-string v1, "FLUSHABLE_STORY_ID"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "flushable_story_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/c$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/c$a;->FLUSHABLE_STORY_ID:Lio/casper/android/n/c/a/c$a;

    .line 16
    const/16 v0, 0x12

    new-array v0, v0, [Lio/casper/android/n/c/a/c$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/c$a;->ID:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/c$a;->USERNAME:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/n/c/a/c$a;->CLIENT_ID:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/n/c/a/c$a;->TIMESTAMP:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/n/c/a/c$a;->MEDIA_ID:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a/c$a;->MEDIA_KEY:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/n/c/a/c$a;->MEDIA_IV:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/casper/android/n/c/a/c$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/casper/android/n/c/a/c$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/casper/android/n/c/a/c$a;->TIME:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/casper/android/n/c/a/c$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/casper/android/n/c/a/c$a;->ZIPPED:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/casper/android/n/c/a/c$a;->TIME_LEFT:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/casper/android/n/c/a/c$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/casper/android/n/c/a/c$a;->IS_SHARED:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/casper/android/n/c/a/c$a;->IS_VIEWED:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/casper/android/n/c/a/c$a;->DOWNLOAD_STATE:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lio/casper/android/n/c/a/c$a;->FLUSHABLE_STORY_ID:Lio/casper/android/n/c/a/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a/c$a;->$VALUES:[Lio/casper/android/n/c/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/casper/android/e/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lio/casper/android/n/c/a/c$a;->columnNumber:I

    .line 43
    iput-object p4, p0, Lio/casper/android/n/c/a/c$a;->columnName:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lio/casper/android/n/c/a/c$a;->dataType:Lio/casper/android/e/a/b;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/c$a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lio/casper/android/n/c/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/c$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/c$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lio/casper/android/n/c/a/c$a;->$VALUES:[Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/c$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/n/c/a/c$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/casper/android/n/c/a/c$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/n/c/a/c$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
