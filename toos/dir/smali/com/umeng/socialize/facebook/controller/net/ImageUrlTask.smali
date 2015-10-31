.class public Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;
.super Landroid/os/AsyncTask;
.source "ImageUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final FACEBOOK_URL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mImageUid:Ljava/lang/String;

.field private mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "imgUid"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    const-string v0, "https://graph.facebook.com/?"

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->FACEBOOK_URL:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mImageUid:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mImageUid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private doImageUrlRequest()Ljava/lang/String;
    .locals 9

    .prologue
    .line 59
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://graph.facebook.com/?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mImageUid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 60
    const-string v8, "&access_token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    .local v3, httpparams:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x3a98

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    const/16 v7, 0x7530

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    const-string v4, ""

    .line 68
    .local v4, imageUrl:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 70
    .local v1, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 72
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 74
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->streamToJson(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, json:Ljava/lang/String;
    const-string v7, "source"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    invoke-direct {p0, v5}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 83
    .restart local v5       #json:Ljava/lang/String;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    iget-object v7, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    const-string v8, "### \u83b7\u53d6\u5206\u4eab\u5230facebook\u7684\u56fe\u7247url\u5931\u8d25"

    invoke-static {v7, v8}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "json"

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v3, ""

    .line 147
    .local v3, url:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "source"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 152
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private streamToJson(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v4, ""

    .line 133
    :goto_0
    return-object v4

    .line 116
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 117
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 121
    .local v1, line:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 133
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 122
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    const-string v5, "Caught IOException in convertStreamToString()"

    invoke-static {v4, v5, v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    const-string v5, "Caught IOException in convertStreamToString()"

    invoke-static {v4, v5, v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 126
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 128
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 132
    :goto_3
    throw v4

    .line 129
    :catch_2
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    const-string v6, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    const-string v5, "Caught IOException in convertStreamToString()"

    invoke-static {v4, v5, v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->doImageUrlRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadListener()Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "imageUrl"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### image task callback = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;->onComplete(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setUploadListener(Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    .line 167
    return-void
.end method
