.class public Lcom/tencent/plus/ImageActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Lcom/tencent/jsutil/JsBridge;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/tencent/plus/a;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/tencent/plus/m;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;

.field private k:I

.field private l:Z

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Rect;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Bitmap;

.field private t:Lcom/tencent/tauth/QQToken;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/tencent/tauth/IRequestListener;

.field private x:Lcom/tencent/tauth/IRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x280

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput v2, p0, Lcom/tencent/plus/ImageActivity;->k:I

    .line 78
    iput-boolean v2, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    .line 81
    iput v2, p0, Lcom/tencent/plus/ImageActivity;->n:I

    .line 83
    iput v3, p0, Lcom/tencent/plus/ImageActivity;->o:I

    .line 84
    iput v3, p0, Lcom/tencent/plus/ImageActivity;->p:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    .line 442
    new-instance v0, Lcom/tencent/plus/j;

    invoke-direct {v0, p0}, Lcom/tencent/plus/j;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->u:Landroid/view/View$OnClickListener;

    .line 470
    new-instance v0, Lcom/tencent/plus/g;

    invoke-direct {v0, p0}, Lcom/tencent/plus/g;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->v:Landroid/view/View$OnClickListener;

    .line 637
    new-instance v0, Lcom/tencent/plus/i;

    invoke-direct {v0, p0}, Lcom/tencent/plus/i;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->w:Lcom/tencent/tauth/IRequestListener;

    .line 756
    new-instance v0, Lcom/tencent/plus/h;

    invoke-direct {v0, p0}, Lcom/tencent/plus/h;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->x:Lcom/tencent/tauth/IRequestListener;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 100
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    invoke-static {v1, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 108
    const/high16 v5, 0x40

    .line 110
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 113
    :goto_0
    mul-int v6, v2, v1

    if-gt v6, v5, :cond_0

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    invoke-static {v0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    return-object v0

    .line 115
    :cond_0
    div-int/lit8 v2, v2, 0x2

    .line 116
    div-int/lit8 v1, v1, 0x2

    .line 117
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, -0x2

    const/high16 v6, 0x41c0

    const/high16 v10, 0x4190

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 145
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 149
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 152
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    .line 153
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v3, Lcom/tencent/plus/a;

    invoke-direct {v3, p0}, Lcom/tencent/plus/a;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    .line 161
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    invoke-virtual {v3, v1}, Lcom/tencent/plus/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/tencent/plus/a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v3, Lcom/tencent/plus/m;

    invoke-direct {v3, p0}, Lcom/tencent/plus/m;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/m;

    .line 166
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const/16 v1, 0xe

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    const/16 v1, 0xf

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/m;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/m;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42a0

    invoke-static {p0, v3}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 185
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    const-string v3, "com.tencent.plus.logo.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    .line 195
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const/high16 v3, 0x40e0

    invoke-static {p0, v3}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 198
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 200
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 201
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x4270

    invoke-static {p0, v3}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 212
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const-string v1, "com.tencent.plus.bar.png"

    invoke-direct {p0, v1}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const/high16 v1, 0x4120

    invoke-static {p0, v1}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v1

    .line 220
    invoke-virtual {v0, v1, v1, v1, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 221
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v1, Lcom/tencent/plus/c;

    invoke-direct {v1, p0, p0}, Lcom/tencent/plus/c;-><init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;)V

    .line 224
    const/high16 v3, 0x4160

    invoke-static {p0, v3}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v3

    .line 225
    const/high16 v4, 0x40e0

    invoke-static {p0, v4}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v4

    .line 227
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    .line 228
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c

    invoke-static {p0, v6}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x4234

    invoke-static {p0, v7}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 234
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 235
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 238
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Lcom/tencent/plus/c;->b(Landroid/widget/Button;)V

    .line 239
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 241
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    .line 242
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c

    invoke-static {p0, v6}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x4234

    invoke-static {p0, v7}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 249
    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 251
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    const-string v4, "\u9009\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/c;->a(Landroid/widget/Button;)V

    .line 254
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const-string v3, "\u79fb\u52a8\u548c\u7f29\u653e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/high16 v3, 0x4040

    invoke-static {p0, v3}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 265
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 266
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 270
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    .line 271
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 275
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 277
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/m;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/m;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    const-string v1, "key_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "key_error_detail"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v1, "key_response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const/4 v1, -0x1

    .line 580
    invoke-virtual {p0, v1, v0}, Lcom/tencent/plus/ImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 581
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter

    .prologue
    .line 520
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 522
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x28

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 527
    const-string v1, "picture"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 528
    const-string v1, "user/set_user_face"

    const-string v3, "POST"

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->w:Lcom/tencent/tauth/IRequestListener;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/plus/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/plus/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/plus/f;-><init>(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 135
    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 138
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    .line 329
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read picture: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    const-string v1, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    .line 344
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;I)V

    .line 345
    const/4 v2, -0x5

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/plus/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/k;

    invoke-direct {v1, p0}, Lcom/tencent/plus/k;-><init>(Lcom/tencent/plus/ImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 388
    return-void

    .line 338
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tencent/plus/a;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x11

    const/high16 v5, 0x4180

    const/4 v6, 0x0

    .line 549
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 550
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 551
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 552
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 553
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 554
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/tencent/plus/n;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 556
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    if-nez p2, :cond_0

    .line 558
    const-string v3, "com.tencent.plus.ic_success.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    :goto_0
    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 565
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 566
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 567
    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 568
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 569
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 570
    return-void

    .line 561
    :cond_0
    const-string v3, "com.tencent.plus.ic_error.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/a;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 481
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 482
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    invoke-virtual {v1}, Lcom/tencent/plus/a;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 483
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 484
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 485
    const/4 v2, 0x2

    aget v2, v1, v2

    .line 486
    const/4 v4, 0x5

    aget v4, v1, v4

    .line 487
    aget v6, v1, v7

    .line 488
    iget v1, p0, Lcom/tencent/plus/ImageActivity;->o:I

    int-to-float v1, v1

    div-float v0, v1, v0

    .line 489
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 490
    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    float-to-int v2, v2

    .line 491
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 492
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 493
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 495
    const v0, 0x44228000

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 496
    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 498
    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 500
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    iget v1, p0, Lcom/tencent/plus/ImageActivity;->o:I

    iget v2, p0, Lcom/tencent/plus/ImageActivity;->p:I

    invoke-static {v0, v7, v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 505
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    invoke-direct {p0, v1}, Lcom/tencent/plus/ImageActivity;->a(Landroid/graphics/Bitmap;)V

    .line 512
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 629
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->finish()V

    .line 585
    iget v0, p0, Lcom/tencent/plus/ImageActivity;->n:I

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/plus/ImageActivity;->overridePendingTransition(II)V

    .line 588
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 594
    iget v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    .line 595
    const-string v1, "user/get_simple_userinfo"

    const-string v3, "GET"

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->x:Lcom/tencent/tauth/IRequestListener;

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method static synthetic f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/plus/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/plus/ImageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/plus/ImageActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    return-wide v0
.end method

.method static synthetic j(Lcom/tencent/plus/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/plus/ImageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/plus/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAsync() ,graphPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/tencent/sdkutil/TemporaryStorage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 605
    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 606
    :cond_0
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/tauth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {v0, p2}, Lcom/tencent/sdkutil/TemporaryStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {}, Lcom/tencent/sdkutil/TemporaryStorage;->getId()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v1, p4}, Lcom/tencent/sdkutil/TemporaryStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/jsutil/JsBridge;

    const-string v3, "requestAsync"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setResult(I)V

    .line 430
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 393
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->requestWindowFeature(I)Z

    .line 395
    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setRequestedOrientation(I)V

    .line 396
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setContentView(Landroid/view/View;)V

    .line 397
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/jsutil/JsConfig;->mTencentFileProtocolPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/jsutil/JsBridge;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/jsutil/JsBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/jsutil/JsBridge;

    .line 399
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    .line 401
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 403
    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->r:Ljava/lang/String;

    .line 404
    const-string v1, "return_activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->c:Ljava/lang/String;

    .line 407
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 410
    const-string v5, "openid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    const-string v6, "exitAnim"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->n:I

    .line 412
    new-instance v0, Lcom/tencent/tauth/QQToken;

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/tencent/tauth/QQToken;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    .line 414
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tauth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v0, v5}, Lcom/tencent/tauth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->b()V

    .line 422
    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->e()V

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    .line 424
    const-string v0, "10653"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    .line 425
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 436
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/plus/a;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_0
    return-void
.end method
