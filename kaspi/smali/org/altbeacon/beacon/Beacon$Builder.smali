.class public Lorg/altbeacon/beacon/Beacon$Builder;
.super Ljava/lang/Object;
.source "Beacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mId1:Lorg/altbeacon/beacon/Identifier;

.field private mId2:Lorg/altbeacon/beacon/Identifier;

.field private mId3:Lorg/altbeacon/beacon/Identifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 506
    return-void
.end method


# virtual methods
.method public build()Lorg/altbeacon/beacon/Beacon;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public setBeaconTypeCode(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 598
    return-object p0
.end method

.method public setBluetoothAddress(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 618
    return-object p0
.end method

.method public setBluetoothName(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 648
    return-object p0
.end method

.method public setDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/altbeacon/beacon/Beacon$Builder;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 628
    return-object p0
.end method

.method public setId1(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 545
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    .line 546
    return-object p0
.end method

.method public setId2(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 556
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    .line 557
    return-object p0
.end method

.method public setId3(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 567
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    .line 568
    return-object p0
.end method

.method public setIdentifiers(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)",
            "Lorg/altbeacon/beacon/Beacon$Builder;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    .line 532
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    .line 533
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    .line 534
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 535
    return-object p0
.end method

.method public setManufacturer(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 638
    return-object p0
.end method

.method public setRssi(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 578
    return-object p0
.end method

.method public setServiceUuid(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 608
    return-object p0
.end method

.method public setTxPower(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 588
    return-object p0
.end method
