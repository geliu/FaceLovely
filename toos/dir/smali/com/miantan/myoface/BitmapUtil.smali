.class public Lcom/miantan/myoface/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;[BLandroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "path"
    .parameter "data"
    .parameter "context"
    .parameter "uri"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, result:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 109
    invoke-static {p0, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    .line 113
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 123
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 124
    const/4 v3, 0x0

    invoke-static {v1, v3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static getResizedBitmap(Ljava/lang/String;[BLandroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"
    .parameter "data"
    .parameter "context"
    .parameter "uri"
    .parameter "target"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 58
    const/4 v4, 0x0

    .line 60
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    if-lez p4, :cond_1

    .line 62
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v3, info:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 65
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 69
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    invoke-static {p0, p1, p2, p3, v3}, Lcom/miantan/myoface/BitmapUtil;->decode(Ljava/lang/String;[BLandroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 74
    .local v1, dim:I
    if-nez p5, :cond_0

    .line 75
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 76
    :cond_0
    invoke-static {v1, p4}, Lcom/miantan/myoface/BitmapUtil;->sampleSize(II)I

    move-result v5

    .line 78
    .local v5, ssize:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    .end local v1           #dim:I
    .end local v3           #info:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #ssize:I
    :cond_1
    const/4 v0, 0x0

    .line 85
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3, v4}, Lcom/miantan/myoface/BitmapUtil;->decode(Ljava/lang/String;[BLandroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static sampleSize(II)I
    .locals 3
    .parameter "width"
    .parameter "target"

    .prologue
    .line 145
    const/4 v1, 0x1

    .line 146
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 153
    :cond_0
    return v1

    .line 147
    :cond_1
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_0

    .line 150
    div-int/lit8 p0, p0, 0x2

    .line 151
    mul-int/lit8 v1, v1, 0x2

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bgimage"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v11, v0

    .line 33
    .local v11, width:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 35
    .local v8, height:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .local v5, matrix:Landroid/graphics/Matrix;
    double-to-float v0, p1

    div-float v10, v0, v11

    .line 38
    .local v10, scaleWidth:F
    double-to-float v0, p3

    div-float v9, v0, v8

    .line 40
    .local v9, scaleHeight:F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 41
    const/4 v1, 0x0

    const/4 v2, 0x0

    float-to-int v3, v11

    .line 42
    float-to-int v4, v8

    const/4 v6, 0x1

    move-object v0, p0

    .line 41
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 43
    .local v7, bitmap:Landroid/graphics/Bitmap;
    return-object v7
.end method
