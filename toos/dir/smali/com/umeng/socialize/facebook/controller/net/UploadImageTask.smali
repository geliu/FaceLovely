.class public Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;
.super Landroid/os/AsyncTask;
.source "UploadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mUmImage:Lcom/umeng/socialize/media/UMImage;

.field private mUploadBitmap:Landroid/graphics/Bitmap;

.field private mUploadCallback:Lcom/facebook/Request$Callback;

.field private mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/media/UMImage;)V
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUmImage:Lcom/umeng/socialize/media/UMImage;

    .line 42
    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;-><init>(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)V

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadCallback:Lcom/facebook/Request$Callback;

    .line 58
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUmImage:Lcom/umeng/socialize/media/UMImage;

    .line 60
    return-void
.end method

.method static synthetic access$1(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    return-object v0
.end method

.method private uploadImamge()V
    .locals 6

    .prologue
    const/16 v4, 0x96

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, imgData:[B
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUmImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, cachePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    invoke-static {v0, v4, v4}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadCallback:Lcom/facebook/Request$Callback;

    .line 94
    invoke-static {v3, v4, v5}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v2

    .line 96
    .local v2, request:Lcom/facebook/Request;
    invoke-virtual {v2}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    .line 100
    .end local v2           #request:Lcom/facebook/Request;
    :goto_1
    return-void

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUmImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 86
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    .line 87
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->TAG:Ljava/lang/String;

    const-string v4, "### uploading image ..."

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->TAG:Ljava/lang/String;

    const-string v4, "\u5206\u4eab\u56fe\u7247\u4e3a\u7a7a, \u5206\u4eab\u5931\u8d25..."

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->uploadImamge()V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUploadListener()Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    return-object v0
.end method

.method public setUploadBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadBitmap:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public setUploadListener(Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    .line 128
    return-void
.end method
