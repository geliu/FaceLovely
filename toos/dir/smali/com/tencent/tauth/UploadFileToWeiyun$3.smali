.class Lcom/tencent/tauth/UploadFileToWeiyun$3;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/UploadFileToWeiyun;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/UploadFileToWeiyun;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 349
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 350
    const/16 v2, 0x3a98

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 351
    const/16 v2, 0x4e20

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 353
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 354
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 355
    const-string v2, "TX_QQF_ANDROID"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 357
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #setter for: Lcom/tencent/tauth/UploadFileToWeiyun;->offset:I
    invoke-static {v0, v1}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1302(Lcom/tencent/tauth/UploadFileToWeiyun;I)I

    .line 363
    const/high16 v0, 0x2

    .line 364
    new-array v3, v0, [B

    .line 367
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->filepath:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$700(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->offset:I
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1300(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->file_size:I
    invoke-static {v5}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1000(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 378
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 379
    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    iget-object v6, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    iget-object v7, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->offset:I
    invoke-static {v7}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1300(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v7

    #calls: Lcom/tencent/tauth/UploadFileToWeiyun;->packPostBody([BII)[B
    invoke-static {v6, v3, v0, v7}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1500(Lcom/tencent/tauth/UploadFileToWeiyun;[BII)[B

    move-result-object v6

    #setter for: Lcom/tencent/tauth/UploadFileToWeiyun;->postbody:[B
    invoke-static {v5, v6}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1402(Lcom/tencent/tauth/UploadFileToWeiyun;[B)[B

    .line 380
    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    invoke-static {v5, v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1312(Lcom/tencent/tauth/UploadFileToWeiyun;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->postbody:[B
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1400(Lcom/tencent/tauth/UploadFileToWeiyun;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_1
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 370
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 371
    iput v9, v0, Landroid/os/Message;->what:I

    .line 372
    const-string v1, "doUploadPic failed, FileInputStream open file error!"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 381
    :catch_1
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 383
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 384
    iput v9, v0, Landroid/os/Message;->what:I

    .line 385
    const-string v1, "doUploadPic failed, FileInputStream read buffer error!"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 393
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->host:Ljava/lang/String;
    invoke-static {v6}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$500(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ftn_handler/?bmd5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->bmd5:Ljava/lang/String;
    invoke-static {v6}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$900(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v5, "Accept-Encoding"

    const-string v6, "*/*"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v5, "Pragma"

    const-string v6, "no-cache"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v6, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->postbody:[B
    invoke-static {v6}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1400(Lcom/tencent/tauth/UploadFileToWeiyun;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 400
    invoke-virtual {v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 405
    :try_start_2
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 413
    :goto_2
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_3

    .line 415
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->offset:I
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1300(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->file_size:I
    invoke-static {v5}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1000(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 416
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->offset:I
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1300(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->file_size:I
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1000(Lcom/tencent/tauth/UploadFileToWeiyun;)I

    move-result v0

    int-to-long v7, v0

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 417
    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 418
    const/4 v6, 0x2

    iput v6, v5, Landroid/os/Message;->what:I

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    iget-object v6, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    const-string v5, "weiyun_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadFileToWeiyun doUploadPic progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    :catch_2
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    const-string v5, "weiyun_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadFileToWeiyun doUploadPic error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_2

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 424
    const/4 v5, 0x3

    iput v5, v0, Landroid/os/Message;->what:I

    .line 425
    const-string v5, ""

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    iget-object v5, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    const-string v0, "weiyun_test"

    const-string v5, "uploadFileToWeiyun doUploadPic success"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    :cond_3
    const-string v1, "weiyun_test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFileToWeiyun doUploadPic failed, httpStatusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 432
    const/4 v2, -0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUploadPic failed, httpStatusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/tencent/tauth/UploadFileToWeiyun$3;->this$0:Lcom/tencent/tauth/UploadFileToWeiyun;

    #getter for: Lcom/tencent/tauth/UploadFileToWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/UploadFileToWeiyun;->access$1200(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
