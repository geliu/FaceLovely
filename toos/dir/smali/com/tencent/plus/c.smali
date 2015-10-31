.class Lcom/tencent/plus/c;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    .line 287
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;)V
    .locals 5
    .parameter

    .prologue
    .line 292
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "com.tencent.plus.blue_normal.png"

    invoke-static {v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "com.tencent.plus.blue_down.png"

    invoke-static {v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v4, "com.tencent.plus.blue_disable.png"

    invoke-static {v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 298
    sget-object v4, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 299
    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 301
    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 302
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method public b(Landroid/widget/Button;)V
    .locals 5
    .parameter

    .prologue
    .line 308
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "com.tencent.plus.gray_normal.png"

    invoke-static {v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "com.tencent.plus.gray_down.png"

    invoke-static {v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/ImageActivity;

    const-string v4, "com.tencent.plus.gray_disable.png"

    invoke-static {v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 314
    sget-object v4, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 315
    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 316
    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 317
    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 318
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void
.end method
