.class public Lcom/revmob/ads/fullscreen/client/FullscreenData;
.super Lcom/revmob/client/AdData;
.source "FullscreenData.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "com.revmob.ads.fullscreen.adUrl"

.field private static loadedFullscreens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/revmob/ads/fullscreen/client/FullscreenData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clickSoundURL:Ljava/lang/String;

.field private closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

.field private doNotShow:Z

.field private dspHtml:Ljava/lang/String;

.field private dspUrl:Ljava/lang/String;

.field private frameLandscape:Landroid/graphics/Bitmap;

.field private framePortrait:Landroid/graphics/Bitmap;

.field private fullscreenPercentage:D

.field private gettingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private htmlAdUrl:Ljava/lang/String;

.field private htmlCode:Ljava/lang/String;

.field private imageHeight:I

.field private imageLandscape:Landroid/graphics/Bitmap;

.field private imagePortrait:Landroid/graphics/Bitmap;

.field private imageSize:[I

.field private imageSquare:Landroid/graphics/Bitmap;

.field private imageWidth:I

.field private orientationLock:I

.field private parallaxDelta:I

.field private postRoll:Landroid/graphics/Bitmap;

.field private postRollAlpha:I

.field private postRollBlue:I

.field private postRollGreen:I

.field private postRollHeight:D

.field private postRollRed:I

.field private postRollText:Ljava/lang/String;

.field private postRollWidth:D

.field private preRollAlpha:I

.field private preRollBlue:I

.field private preRollGreen:I

.field private preRollHeight:D

.field private preRollLandscape:Landroid/graphics/Bitmap;

.field private preRollPortrait:Landroid/graphics/Bitmap;

.field private preRollRed:I

.field private preRollText:Ljava/lang/String;

.field private preRollWidth:D

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private replayButton:Landroid/graphics/Bitmap;

.field private revmobLogo:Landroid/graphics/Bitmap;

.field private showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

.field private showSoundURL:Ljava/lang/String;

.field private soundOff:Landroid/graphics/Bitmap;

.field private soundOn:Landroid/graphics/Bitmap;

.field private timeLeftTime:I

.field private trackingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private videoEnd:I

.field private videoFile:Ljava/io/File;

.field private videoOrientation:I

.field private videoSkipTime:D

.field private videoUrl:Ljava/lang/String;

.field private volumeMute:Ljava/lang/String;

.field private volumeUp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->loadedFullscreens:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/revmob/RevMobAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/revmob/ads/internal/AnimationConfiguration;Lcom/revmob/ads/internal/AnimationConfiguration;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IDIILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DDDDLjava/lang/String;Ljava/lang/String;IIIIIIIII[IDIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/revmob/RevMobAdsListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Lcom/revmob/ads/internal/AnimationConfiguration;",
            "Lcom/revmob/ads/internal/AnimationConfiguration;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IDII",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "DDDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIIII[IDIZ)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p14

    move/from16 v7, p15

    invoke-direct/range {v2 .. v7}, Lcom/revmob/client/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->framePortrait:Landroid/graphics/Bitmap;

    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->frameLandscape:Landroid/graphics/Bitmap;

    .line 55
    const/4 v2, 0x0

    iput v2, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->parallaxDelta:I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->doNotShow:Z

    .line 104
    iput-object p4, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 105
    iput-object p6, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlCode:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlAdUrl:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspUrl:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspHtml:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imagePortrait:Landroid/graphics/Bitmap;

    .line 110
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageLandscape:Landroid/graphics/Bitmap;

    .line 111
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->framePortrait:Landroid/graphics/Bitmap;

    .line 112
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->frameLandscape:Landroid/graphics/Bitmap;

    .line 113
    move/from16 v0, p35

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageHeight:I

    .line 114
    move/from16 v0, p36

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageWidth:I

    .line 115
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageSquare:Landroid/graphics/Bitmap;

    .line 116
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    .line 117
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    .line 118
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->showSoundURL:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->clickSoundURL:Ljava/lang/String;

    .line 120
    move/from16 v0, p18

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->parallaxDelta:I

    .line 121
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoSkipTime:D

    .line 122
    move/from16 v0, p21

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->timeLeftTime:I

    .line 123
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->soundOff:Landroid/graphics/Bitmap;

    .line 124
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->soundOn:Landroid/graphics/Bitmap;

    .line 125
    move/from16 v0, p22

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoEnd:I

    .line 126
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoUrl:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->replayButton:Landroid/graphics/Bitmap;

    .line 128
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->revmobLogo:Landroid/graphics/Bitmap;

    .line 129
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->volumeMute:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->volumeUp:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoFile:Ljava/io/File;

    .line 132
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->trackingEvents:Ljava/util/ArrayList;

    .line 133
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->gettingEvents:Ljava/util/ArrayList;

    .line 134
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollLandscape:Landroid/graphics/Bitmap;

    .line 135
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollPortrait:Landroid/graphics/Bitmap;

    .line 136
    move-wide/from16 v0, p40

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollHeight:D

    .line 137
    move-wide/from16 v0, p42

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollWidth:D

    .line 138
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRoll:Landroid/graphics/Bitmap;

    .line 139
    move-wide/from16 v0, p44

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollHeight:D

    .line 140
    move-wide/from16 v0, p46

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollWidth:D

    .line 141
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollText:Ljava/lang/String;

    .line 142
    move/from16 v0, p50

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollRed:I

    .line 143
    move/from16 v0, p51

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollGreen:I

    .line 144
    move/from16 v0, p52

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollBlue:I

    .line 145
    move/from16 v0, p53

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollAlpha:I

    .line 146
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollText:Ljava/lang/String;

    .line 147
    move/from16 v0, p54

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollRed:I

    .line 148
    move/from16 v0, p55

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollGreen:I

    .line 149
    move/from16 v0, p56

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollBlue:I

    .line 150
    move/from16 v0, p57

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollAlpha:I

    .line 151
    move/from16 v0, p58

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoOrientation:I

    .line 152
    move-object/from16 v0, p59

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageSize:[I

    .line 153
    move-wide/from16 v0, p60

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->fullscreenPercentage:D

    .line 154
    move/from16 v0, p62

    iput v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->orientationLock:I

    .line 155
    move/from16 v0, p63

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->doNotShow:Z

    .line 156
    return-void
.end method

.method public static addLoadedFullscreen(Lcom/revmob/ads/fullscreen/client/FullscreenData;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->loadedFullscreens:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/client/FullscreenData;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    sget-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->loadedFullscreens:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method

.method public static getLoadedFullscreen(Ljava/lang/String;)Lcom/revmob/ads/fullscreen/client/FullscreenData;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->loadedFullscreens:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;

    return-object v0
.end method


# virtual methods
.method public getAdImage(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageLandscape:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageLandscape:Landroid/graphics/Bitmap;

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imagePortrait:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imagePortrait:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageSquare:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, ""

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->campaignId:Ljava/lang/String;

    .line 163
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 166
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 178
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->campaignId:Ljava/lang/String;

    return-object v0

    .line 171
    :cond_2
    :try_start_1
    const-string v0, "Testing Mode"

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->campaignId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getClickSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->clickSoundURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    invoke-virtual {v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getDoNotShow()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->doNotShow:Z

    return v0
.end method

.method public getDspHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getDspUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->frameLandscape:Landroid/graphics/Bitmap;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->framePortrait:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFullscreenPercentage()D
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->fullscreenPercentage:D

    return-wide v0
.end method

.method public getGettingEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->gettingEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHtmlAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageHeight:I

    return v0
.end method

.method public getImageSize()[I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageSize:[I

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageWidth:I

    return v0
.end method

.method public getOrientationLock()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->orientationLock:I

    return v0
.end method

.method public getParallaxDelta()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->parallaxDelta:I

    return v0
.end method

.method public getPostRoll()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRoll:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPostRollAlpha()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollAlpha:I

    return v0
.end method

.method public getPostRollBlue()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollBlue:I

    return v0
.end method

.method public getPostRollGreen()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollGreen:I

    return v0
.end method

.method public getPostRollHeight()D
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollHeight:D

    return-wide v0
.end method

.method public getPostRollRed()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollRed:I

    return v0
.end method

.method public getPostRollText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollText:Ljava/lang/String;

    return-object v0
.end method

.method public getPostRollWidth()D
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->postRollWidth:D

    return-wide v0
.end method

.method public getPreRollAlpha()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollAlpha:I

    return v0
.end method

.method public getPreRollBlue()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollBlue:I

    return v0
.end method

.method public getPreRollGreen()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollGreen:I

    return v0
.end method

.method public getPreRollHeight()D
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollHeight:D

    return-wide v0
.end method

.method public getPreRollLandscape()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollLandscape:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreRollPortrait()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollPortrait:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreRollRed()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollRed:I

    return v0
.end method

.method public getPreRollText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollText:Ljava/lang/String;

    return-object v0
.end method

.method public getPreRollWidth()D
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->preRollWidth:D

    return-wide v0
.end method

.method public getPublisherListener()Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->publisherListener:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method public getReplayButton()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->replayButton:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRevmobLogo()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->revmobLogo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    invoke-virtual {v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getShowSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->showSoundURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundOff()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->soundOff:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSoundOn()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->soundOn:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTimeLeftTime()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->timeLeftTime:I

    return v0
.end method

.method public getTrackingEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->trackingEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoEnd()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoEnd:I

    return v0
.end method

.method public getVideoFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoFile:Ljava/io/File;

    return-object v0
.end method

.method public getVideoOrientation()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoOrientation:I

    return v0
.end method

.method public getVideoSkipTime()D
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoSkipTime:D

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeMute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->volumeMute:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeUp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->volumeUp:Ljava/lang/String;

    return-object v0
.end method

.method public isDspFullscreen()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspHtml:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHtmlCodeLoaded()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlCode:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHtmlFullscreen()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlAdUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->htmlCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticMultiOrientationFullscreen()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imagePortrait:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->imageLandscape:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDspUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/client/FullscreenData;->dspUrl:Ljava/lang/String;

    .line 250
    return-void
.end method
