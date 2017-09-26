.class public Lio/casper/android/a;
.super Ljava/lang/Object;
.source "CasperConstants.java"


# static fields
.field public static AD_CRAZY_DOMAINS:Ljava/lang/String;

.field public static AD_DIGITAL_OCEAN:Ljava/lang/String;

.field public static EMOJI_APPLE_PACK_1:Ljava/lang/String;

.field public static EMOJI_GOOGLE_PACK_1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "https://www.digitalocean.com/?refcode=bcf5157cffdb"

    sput-object v0, Lio/casper/android/a;->AD_DIGITAL_OCEAN:Ljava/lang/String;

    .line 7
    const-string v0, "http://www.crazydomains.co.nz?affiliate=YTozOntzOjE5OiJhZmZpbGlhdGVfYmFubmVyX2lkIjtzOjM6IjYzMSI7czoxMDoicmVsb2FkX3VybCI7czoyOToiaHR0cDovL3d3dy5jcmF6eWRvbWFpbnMuY28ubnoiO3M6OToibWVtYmVyX2lkIjtzOjc6IjIzMDA2OTEiO30="

    sput-object v0, Lio/casper/android/a;->AD_CRAZY_DOMAINS:Ljava/lang/String;

    .line 10
    const-string v0, "Apple Emoji Pack 1"

    sput-object v0, Lio/casper/android/a;->EMOJI_APPLE_PACK_1:Ljava/lang/String;

    .line 11
    const-string v0, "Google Emoji Pack 1"

    sput-object v0, Lio/casper/android/a;->EMOJI_GOOGLE_PACK_1:Ljava/lang/String;

    return-void
.end method
