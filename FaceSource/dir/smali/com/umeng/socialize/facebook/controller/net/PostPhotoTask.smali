.class public Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;
.super Landroid/os/AsyncTask;
.source "PostPhotoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

.field private mShareContent:Ljava/lang/String;

.field private mShareMedia:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2
    .parameter "shareContent"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareContent:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 23
    iput-object v1, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    .line 25
    const-string v0, "SharePhotoTask"

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareContent:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 33
    return-void
.end method

.method static synthetic access$2(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;)Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 5
    .parameter "params"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v3, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v1

    .line 43
    .local v1, data:[B
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v3}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v3}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, imageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imageUrl:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 54
    const-string v3, "SharePhotoTask"

    const-string v4, "### image byte data is null..."

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    return-object v1

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v3}, Lcom/umeng/socialize/media/UMediaObject;->toByte()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getPostListener()Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 66
    const-string v1, "SharePhotoTask"

    const-string v2, "#### \u5927\u56fe\u5206\u4eab"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v3, photoBundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69
    const-string v1, "message"

    iget-object v2, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mShareContent:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/photos"

    .line 73
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;

    invoke-direct {v5, p0}, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$1;-><init>(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;)V

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 82
    .local v0, request:Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 83
    return-void
.end method

.method public setPostListener(Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask;->mPostListener:Lcom/umeng/socialize/facebook/controller/net/PostPhotoTask$OnPostPhotoListener;

    .line 97
    return-void
.end method
