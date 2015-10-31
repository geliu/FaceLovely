.class Lcom/tencent/tauth/DownloadFileFromWeiyun$3;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 258
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 259
    const/16 v1, 0x3a98

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 260
    const/16 v1, 0x4e20

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 262
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 263
    const-string v1, "UTF-8"

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 264
    const-string v1, "TX_QQF_ANDROID"

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_port:I
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/ftn_handler/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_encrypt_url:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$100(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 272
    const/4 v7, 0x0

    .line 273
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$900(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/high16 v2, 0x4

    new-array v11, v2, [B

    .line 288
    const-wide/16 v5, 0x0

    .line 290
    const/4 v4, 0x0

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->isOriginal:Z
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v2

    const-wide/32 v12, 0x40000

    cmp-long v2, v2, v12

    if-lez v2, :cond_2

    const-wide/32 v2, 0x40000

    .line 293
    :goto_0
    add-long/2addr v2, v5

    move/from16 v17, v4

    move-wide/from16 v18, v2

    move/from16 v2, v17

    move-wide v3, v5

    move-object v5, v7

    move-wide/from16 v6, v18

    .line 294
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v8}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v12

    cmp-long v8, v6, v12

    if-gtz v8, :cond_3

    .line 295
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v12, "Host"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v13}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v12, "Connection"

    const-string v13, "Keep-Alive"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v12, "Cookie"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v12, "Pragma"

    const-string v13, "no-cache"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v12, "RANGE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :try_start_1
    invoke-interface {v9, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 305
    const-string v12, "weiyun_test"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uploadFileToWeiyun doDownloadPic response:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 309
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 310
    const/16 v13, 0xc8

    if-eq v12, v13, :cond_1

    const/16 v13, 0xce

    if-ne v12, v13, :cond_3

    .line 311
    :cond_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 313
    :goto_2
    invoke-virtual {v5, v11}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_4

    .line 314
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    int-to-long v12, v8

    add-long/2addr v3, v12

    goto :goto_2

    .line 277
    :catch_0
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 281
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    :goto_3
    return-void

    .line 292
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 322
    :catch_1
    move-exception v8

    .line 323
    add-int/lit8 v2, v2, 0x1

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I
    invoke-static {v12}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v12

    if-le v2, v12, :cond_4

    .line 325
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const-string v1, "weiyun_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFileToWeiyun doDownloadPic error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 329
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 386
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 396
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 397
    const-string v2, "\u4e0b\u8f7d\u6587\u4ef6\u6210\u529f"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 335
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v8}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v12

    sub-long v6, v12, v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v6}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/32 v12, 0x40000

    cmp-long v6, v6, v12

    if-lez v6, :cond_5

    const-wide/32 v6, 0x40000

    .line 340
    :goto_5
    add-long/2addr v6, v3

    .line 341
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 342
    const/4 v12, 0x2

    iput v12, v8, Landroid/os/Message;->what:I

    .line 343
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v13, 0x64

    mul-long/2addr v13, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v15}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v15

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 339
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v6}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v6

    sub-long/2addr v6, v3

    goto :goto_5

    .line 349
    :cond_6
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "Host"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "Pragma"

    const-string v3, "no-cache"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :try_start_3
    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 358
    const-string v2, "weiyun_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileToWeiyun doDownloadPic response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 362
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 363
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_7

    const/16 v3, 0xce

    if-ne v2, v3, :cond_9

    .line 364
    :cond_7
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 366
    :goto_6
    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_9

    .line 367
    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 371
    :catch_2
    move-exception v1

    .line 372
    const/4 v2, 0x1

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v3

    if-le v2, v3, :cond_8

    .line 374
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    const-string v2, "weiyun_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileToWeiyun doDownloadPic error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 378
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    move-object v5, v7

    goto/16 :goto_4

    :cond_9
    move-object v5, v7

    .line 382
    goto/16 :goto_4

    .line 387
    :catch_3
    move-exception v1

    .line 388
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 390
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tauth/DownloadFileFromWeiyun$3;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3
.end method
