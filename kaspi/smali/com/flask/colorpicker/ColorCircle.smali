.class public Lcom/flask/colorpicker/ColorCircle;
.super Ljava/lang/Object;
.source "ColorCircle.java"


# instance fields
.field private color:I

.field private hsv:[F

.field private hsvClone:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF[F)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/flask/colorpicker/ColorCircle;->set(FF[F)V

    .line 13
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/flask/colorpicker/ColorCircle;->color:I

    return v0
.end method

.method public getHsv()[F
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    return-object v0
.end method

.method public getHsvWithLightness(F)[F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    iget-object v1, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 37
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    iget-object v1, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 38
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 39
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsvClone:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/flask/colorpicker/ColorCircle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/flask/colorpicker/ColorCircle;->y:F

    return v0
.end method

.method public set(FF[F)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    iput p1, p0, Lcom/flask/colorpicker/ColorCircle;->x:F

    .line 44
    iput p2, p0, Lcom/flask/colorpicker/ColorCircle;->y:F

    .line 45
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    aget v1, p3, v2

    aput v1, v0, v2

    .line 46
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    aget v1, p3, v3

    aput v1, v0, v3

    .line 47
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    aget v1, p3, v4

    aput v1, v0, v4

    .line 48
    iget-object v0, p0, Lcom/flask/colorpicker/ColorCircle;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/ColorCircle;->color:I

    .line 49
    return-void
.end method

.method public sqDist(FF)D
    .locals 4

    .prologue
    .line 16
    iget v0, p0, Lcom/flask/colorpicker/ColorCircle;->x:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 17
    iget v2, p0, Lcom/flask/colorpicker/ColorCircle;->y:F

    sub-float/2addr v2, p2

    float-to-double v2, v2

    .line 18
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method
