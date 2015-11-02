.class public Lcom/tencent/sdkutil/AsynLoadImg;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static ALBUM_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AsynLoadImg"


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private localImageLocalPath:Ljava/lang/String;

.field private messageHandler:Landroid/os/Handler;

.field private saveCallBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

.field private saveFileRunnable:Ljava/lang/Runnable;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->localImageLocalPath:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/tencent/sdkutil/AsynLoadImg$2;

    invoke-direct {v0, p0}, Lcom/tencent/sdkutil/AsynLoadImg$2;-><init>(Lcom/tencent/sdkutil/AsynLoadImg;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->saveFileRunnable:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/tencent/sdkutil/AsynLoadImg$1;

    invoke-direct {v0, p0}, Lcom/tencent/sdkutil/AsynLoadImg$1;-><init>(Lcom/tencent/sdkutil/AsynLoadImg;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->messageHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/sdkutil/AsynLoadImg;)Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->saveCallBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/sdkutil/AsynLoadImg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/sdkutil/AsynLoadImg;->ALBUM_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/sdkutil/AsynLoadImg;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/sdkutil/AsynLoadImg;)J
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->startTime:J

    return-wide v0
.end method

.method public static getbitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 131
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getbitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 144
    const-string v1, "AsynLoadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image download finished."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    const-string v0, "AsynLoadImg"

    const-string v1, "getbitmap bmp fail---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLocalImageLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->localImageLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public save(Ljava/lang/String;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    const-string v0, "AsynLoadImg"

    const-string v1, "--save---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0, v2}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/tencent/sdkutil/Util;->checkSd()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const/4 v0, 0x2

    invoke-interface {p2, v0, v2}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/AsynLoadImg;->ALBUM_PATH:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/sdkutil/AsynLoadImg;->startTime:J

    .line 89
    iput-object p1, p0, Lcom/tencent/sdkutil/AsynLoadImg;->imgUrl:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/tencent/sdkutil/AsynLoadImg;->saveCallBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    .line 91
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/sdkutil/AsynLoadImg;->saveFileRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/tencent/sdkutil/AsynLoadImg;->ALBUM_PATH:Ljava/lang/String;

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "AsynLoadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 112
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 113
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    const-string v0, "AsynLoadImg"

    const-string v1, "saveFile bmp fail---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalImageLocalPath(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/sdkutil/AsynLoadImg;->localImageLocalPath:Ljava/lang/String;

    .line 44
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localImageLocalPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/sdkutil/AsynLoadImg;->localImageLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
