.class final Lcom/tencent/sdkutil/HttpUtils$4;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$graphPath:Ljava/lang/String;

.field final synthetic val$httpMethod:Ljava/lang/String;

.field final synthetic val$listener:Lcom/tencent/tauth/IRequestListener;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$token:Lcom/tencent/tauth/QQToken;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$token:Lcom/tencent/tauth/QQToken;

    iput-object p2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$graphPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$params:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$httpMethod:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iput-object p7, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$token:Lcom/tencent/tauth/QQToken;

    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$graphPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$params:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$httpMethod:Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/HttpUtils;->requestNative(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/sdkutil/HttpUtils;->access$100(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 394
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi onComplete"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync MalformedURLException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 402
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V

    .line 404
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync onConnectTimeoutException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 406
    :catch_2
    move-exception v0

    .line 407
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V

    .line 409
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync onSocketTimeoutException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 411
    :catch_3
    move-exception v0

    .line 412
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V

    .line 414
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync onNetworkUnavailableException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 416
    :catch_4
    move-exception v0

    .line 417
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V

    .line 419
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync onHttpStatusException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 421
    :catch_5
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 424
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync IOException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 426
    :catch_6
    move-exception v0

    .line 427
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V

    .line 429
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync JSONException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 431
    :catch_7
    move-exception v0

    .line 432
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$listener:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$4;->val$object:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 434
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "openSDK_LOG"

    const-string v3, "OpenApi requestAsync onUnknowException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
