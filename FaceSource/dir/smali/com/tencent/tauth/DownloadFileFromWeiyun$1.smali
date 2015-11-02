.class Lcom/tencent/tauth/DownloadFileFromWeiyun$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 140
    :try_start_0
    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server error, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onDownloadStart()V

    .line 159
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #calls: Lcom/tencent/tauth/DownloadFileFromWeiyun;->doDownload()V
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$800(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V

    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_encrypt_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_encrypt_url:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$102(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_cookie_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$202(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_cookie_value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$302(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_svr_port"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_port:I
    invoke-static {v1, v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$402(Lcom/tencent/tauth/DownloadFileFromWeiyun;I)I

    .line 150
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_svr_host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$502(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    const-string v2, "dl_thumb_size"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$702(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$900(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onDownloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onDownloadProgress(I)V

    goto/16 :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$1;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
