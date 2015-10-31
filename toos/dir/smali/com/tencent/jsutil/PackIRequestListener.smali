.class public Lcom/tencent/jsutil/PackIRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/jsutil/JsIRequestListener;


# instance fields
.field private mIRequestListener:Lcom/tencent/tauth/IRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 36
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnectTimeoutException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 98
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 99
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-direct {v0, p1}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onHttpStatusException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 144
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 145
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/tencent/open/HttpStatusException;

    invoke-direct {v0, p1}, Lcom/tencent/open/HttpStatusException;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onIOException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 54
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onJSONException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 83
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 84
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onMalformedURLException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 68
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 69
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onNetworkUnavailableException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 128
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 129
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/tencent/open/NetworkUnavailableException;

    invoke-direct {v0, p1}, Lcom/tencent/open/NetworkUnavailableException;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onSocketTimeoutException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 113
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 114
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onUnknowException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 159
    invoke-static {p2}, Lcom/tencent/sdkutil/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/IRequestListener;

    iput-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    .line 160
    iget-object v0, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/tencent/jsutil/PackIRequestListener;->mIRequestListener:Lcom/tencent/tauth/IRequestListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method
