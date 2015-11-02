.class public Lcom/tencent/plus/m;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/tencent/plus/m;->b()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/tencent/plus/m;->b()V

    .line 29
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/m;->a:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p0}, Lcom/tencent/plus/m;->getMeasuredWidth()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/tencent/plus/m;->getMeasuredHeight()I

    move-result v1

    .line 80
    add-int/lit8 v2, v1, -0x3c

    add-int/lit8 v2, v2, -0x50

    .line 83
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    const/16 v3, 0x280

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 90
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 92
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 93
    add-int v3, v0, v2

    .line 94
    add-int/2addr v2, v1

    .line 98
    iget-object v4, p0, Lcom/tencent/plus/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/m;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p0}, Lcom/tencent/plus/m;->a()Landroid/graphics/Rect;

    move-result-object v6

    .line 42
    invoke-virtual {p0}, Lcom/tencent/plus/m;->getMeasuredWidth()I

    move-result v7

    .line 43
    invoke-virtual {p0}, Lcom/tencent/plus/m;->getMeasuredHeight()I

    move-result v8

    .line 46
    iget-object v0, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    int-to-float v3, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    int-to-float v3, v7

    int-to-float v4, v8

    iget-object v5, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 59
    iget-object v0, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    return-void
.end method
