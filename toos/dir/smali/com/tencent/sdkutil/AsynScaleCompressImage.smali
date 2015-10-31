.class public Lcom/tencent/sdkutil/AsynScaleCompressImage;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final UPLOAD_IMAGE_MAX_LENGTH:I = 0x8c

.field private static final UPLOAD_IMAGE_MSG_ERROR:I = 0x66

.field private static final UPLOAD_IMAGE_MSG_OK:I = 0x65

.field private static final UPLOAD_QZONE_IMAGE_MAX_LENGTH:I = 0x348


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/tencent/sdkutil/AsynScaleCompressImage;->scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final batchScaleCompressImage(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x1

    invoke-interface {p2, v0, v1}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/tencent/sdkutil/Util;->checkSd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x2

    invoke-interface {p2, v0, v1}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lcom/tencent/sdkutil/AsynScaleCompressImage$3;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tencent/sdkutil/AsynScaleCompressImage$3;-><init>(Landroid/os/Looper;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V

    .line 129
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/sdkutil/AsynScaleCompressImage$4;

    invoke-direct {v2, p1, v0}, Lcom/tencent/sdkutil/AsynScaleCompressImage$4;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected static final compressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 192
    :cond_1
    if-eqz p0, :cond_2

    .line 195
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 196
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 210
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 168
    if-le v0, v2, :cond_0

    .line 169
    :goto_0
    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 170
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0
.end method

.method public static final scaleCompressImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-interface {p2, v0, v1}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/tencent/sdkutil/Util;->checkSd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x2

    invoke-interface {p2, v0, v1}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Lcom/tencent/sdkutil/AsynScaleCompressImage$1;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tencent/sdkutil/AsynScaleCompressImage$1;-><init>(Landroid/os/Looper;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V

    .line 72
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/sdkutil/AsynScaleCompressImage$2;

    invoke-direct {v2, p1, v0}, Lcom/tencent/sdkutil/AsynScaleCompressImage$2;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
