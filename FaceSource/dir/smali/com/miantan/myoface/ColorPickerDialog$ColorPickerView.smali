.class Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerView"
.end annotation


# instance fields
.field private centerRadius:F

.field private downInCircle:Z

.field private downInRect:Z

.field private highlightCenter:Z

.field private highlightCenterLittle:Z

.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mCircleColors:[I

.field private mHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectColors:[I

.field private mRectPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private r:F

.field private rectBottom:F

.field private rectLeft:F

.field private rectRight:F

.field private rectShader:Landroid/graphics/Shader;

.field private rectTop:F

.field final synthetic this$0:Lcom/miantan/myoface/ColorPickerDialog;


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/ColorPickerDialog;Landroid/content/Context;II)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "height"
    .parameter "width"

    .prologue
    const/high16 v7, 0x40a0

    const v6, 0x3e19999a

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    .line 185
    iput-object p1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    .line 186
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    iput-boolean v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 187
    iput p3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mHeight:I

    .line 188
    iput p4, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    .line 189
    invoke-virtual {p0, p3}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->setMinimumHeight(I)V

    .line 190
    invoke-virtual {p0, p4}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->setMinimumWidth(I)V

    .line 193
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    .line 195
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 196
    .local v0, s:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 197
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, p4

    mul-float/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    div-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    .line 203
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 204
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    #getter for: Lcom/miantan/myoface/ColorPickerDialog;->mInitialColor:I
    invoke-static {p1}, Lcom/miantan/myoface/ColorPickerDialog;->access$0(Lcom/miantan/myoface/ColorPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->centerRadius:F

    .line 209
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    .line 210
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const-string v2, "#72A1D1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/high16 v3, -0x100

    aput v3, v1, v2

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput v3, v1, v2

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    .line 215
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    .line 218
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    .line 219
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    int-to-float v2, p4

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    .line 220
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    int-to-float v2, p4

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    .line 221
    return-void

    .line 193
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private ave(IIF)I
    .locals 1
    .parameter "s"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 405
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private inCenter(FFF)Z
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "centerRadius"

    .prologue
    const-wide v8, 0x400921fb54442d18L

    .line 343
    float-to-double v4, p3

    mul-double/2addr v4, v8

    float-to-double v6, p3

    mul-double v0, v4, v6

    .line 344
    .local v0, centerCircle:D
    mul-float v4, p1, p1

    mul-float v5, p2, p2

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v2, v8, v4

    .line 345
    .local v2, fingerCircle:D
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 346
    const/4 v4, 0x1

    .line 348
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private inColorCircle(FFFF)Z
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "outRadius"
    .parameter "inRadius"

    .prologue
    .line 331
    const-wide v6, 0x400921fb54442d18L

    float-to-double v8, p3

    mul-double/2addr v6, v8

    float-to-double v8, p3

    mul-double v4, v6, v8

    .line 332
    .local v4, outCircle:D
    const-wide v6, 0x400921fb54442d18L

    float-to-double v8, p4

    mul-double/2addr v6, v8

    float-to-double v8, p4

    mul-double v2, v6, v8

    .line 333
    .local v2, inCircle:D
    const-wide v6, 0x400921fb54442d18L

    mul-float v8, p1, p1

    mul-float v9, p2, p2

    add-float/2addr v8, v9

    float-to-double v8, v8

    mul-double v0, v6, v8

    .line 334
    .local v0, fingerCircle:D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 335
    const/4 v6, 0x1

    .line 337
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private inRect(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 354
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interpCircleColor([IF)I
    .locals 10
    .parameter "colors"
    .parameter "unit"

    .prologue
    .line 363
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 364
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 381
    :goto_0
    return v8

    .line 366
    :cond_0
    const/high16 v8, 0x3f80

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 367
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 370
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 371
    .local v6, p:F
    float-to-int v5, v6

    .line 372
    .local v5, i:I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 374
    aget v2, p1, v5

    .line 375
    .local v2, c0:I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 376
    .local v3, c1:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 377
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 378
    .local v7, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 379
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 381
    .local v1, b:I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private interpRectColor([IF)I
    .locals 9
    .parameter "colors"
    .parameter "x"

    .prologue
    const/4 v8, 0x1

    .line 388
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_0

    .line 389
    const/4 v7, 0x0

    aget v2, p1, v7

    .line 390
    .local v2, c0:I
    aget v3, p1, v8

    .line 391
    .local v3, c1:I
    iget v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    div-float v5, v7, v8

    .line 397
    .local v5, p:F
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 398
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v6

    .line 399
    .local v6, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 400
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 401
    .local v1, b:I
    invoke-static {v0, v6, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    return v7

    .line 393
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c0:I
    .end local v3           #c1:I
    .end local v4           #g:I
    .end local v5           #p:F
    .end local v6           #r:I
    :cond_0
    aget v2, p1, v8

    .line 394
    .restart local v2       #c0:I
    const/4 v7, 0x2

    aget v3, p1, v7

    .line 395
    .restart local v3       #c1:I
    iget v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    div-float v5, p2, v7

    .restart local v5       #p:F
    goto :goto_0
.end method


# virtual methods
.method public getCenterPaintColor()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x4000

    .line 225
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    int-to-float v3, v3

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->centerRadius:F

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    iget-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v0, :cond_2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 231
    .local v8, c:I
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->centerRadius:F

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    .end local v8           #c:I
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v1, v1

    iget v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v3, v3

    iget v4, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    iget-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    aput v3, v0, v1

    .line 248
    :cond_3
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    iget v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectShader:Landroid/graphics/Shader;

    .line 249
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 250
    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    iget v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    iget v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    iget v4, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v9, v0, v10

    .line 252
    .local v9, offset:F
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    sub-float v1, v0, v9

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    mul-float v2, v9, v10

    sub-float v2, v0, v2

    .line 253
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    sub-float v3, v0, v9

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    mul-float v4, v9, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 252
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    mul-float v1, v9, v10

    sub-float v1, v0, v1

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    sub-float v2, v0, v9

    .line 255
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    mul-float v3, v9, v10

    add-float/2addr v3, v0

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    sub-float v4, v0, v9

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 254
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float v1, v0, v9

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectTop:F

    mul-float v2, v9, v10

    sub-float v2, v0, v2

    .line 257
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float v3, v0, v9

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    mul-float v4, v9, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectLeft:F

    mul-float v1, v9, v10

    sub-float v1, v0, v1

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    add-float v2, v0, v9

    .line 259
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectRight:F

    mul-float v3, v9, v10

    add-float/2addr v3, v0

    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->rectBottom:F

    add-float v4, v0, v9

    iget-object v5, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 258
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 261
    return-void

    .line 234
    .end local v9           #offset:F
    .restart local v8       #c:I
    :cond_4
    iget-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 327
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    iget v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mHeight:I

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 328
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/high16 v10, 0x4000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 266
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mWidth:I

    int-to-float v8, v8

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 267
    .local v6, y:F
    iget v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v9, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->inColorCircle(FFFF)Z

    move-result v2

    .line 268
    .local v2, inCircle:Z
    iget v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->centerRadius:F

    invoke-direct {p0, v5, v6, v7}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->inCenter(FFF)Z

    move-result v1

    .line 269
    .local v1, inCenter:Z
    invoke-direct {p0, v5, v6}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->inRect(FF)Z

    move-result v3

    .line 271
    .local v3, inRect:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 323
    :goto_0
    return v12

    .line 273
    :pswitch_0
    iput-boolean v2, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 274
    iput-boolean v3, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInRect:Z

    .line 275
    iput-boolean v1, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 277
    :pswitch_1
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 278
    float-to-double v7, v6

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 279
    .local v0, angle:F
    float-to-double v7, v0

    const-wide v9, 0x401921fb54442d18L

    div-double/2addr v7, v9

    double-to-float v4, v7

    .line 280
    .local v4, unit:F
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 281
    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    .line 283
    :cond_0
    iget-object v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    invoke-direct {p0, v8, v4}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->interpCircleColor([IF)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    const-string v7, "ColorPicker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8272\u73af\u5185, \u5750\u6807: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #angle:F
    .end local v4           #unit:F
    :cond_1
    :goto_1
    const-string v7, "ColorPicker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MOVE] \u9ad8\u4eae: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5fae\u4eae: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u4e2d\u5fc3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 290
    :cond_3
    iput-boolean v12, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 291
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    .line 299
    :goto_2
    invoke-virtual {p0}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 285
    :cond_4
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInRect:Z

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 286
    iget-object v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    invoke-direct {p0, v8, v5}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->interpRectColor([IF)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 292
    :cond_5
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_7

    .line 293
    :cond_6
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 294
    iput-boolean v12, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 296
    :cond_7
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 297
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 302
    :pswitch_2
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    .line 303
    iget-object v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    #getter for: Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v7}, Lcom/miantan/myoface/ColorPickerDialog;->access$1(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 304
    iget-object v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    #getter for: Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v7}, Lcom/miantan/myoface/ColorPickerDialog;->access$1(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    move-result-object v7

    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 305
    iget-object v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    invoke-virtual {v7}, Lcom/miantan/myoface/ColorPickerDialog;->dismiss()V

    .line 308
    :cond_8
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v7, :cond_9

    .line 309
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 311
    :cond_9
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInRect:Z

    if-eqz v7, :cond_a

    .line 312
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->downInRect:Z

    .line 314
    :cond_a
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_b

    .line 315
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 317
    :cond_b
    iget-boolean v7, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_c

    .line 318
    iput-boolean v11, p0, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    .line 320
    :cond_c
    invoke-virtual {p0}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
