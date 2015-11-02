.class Lcom/tencent/tauth/DownloadFileFromWeiyun$2;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v1, "oauth_consumer_key"

    const-string v2, "222222"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "file_id"

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFileid:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1100(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "access_token"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "openid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    const-string v1, "thumb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 211
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 212
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4

    .line 250
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 217
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 218
    iput v4, v0, Landroid/os/Message;->what:I

    .line 219
    const-string v1, "getUploadPermission MalformedURLException"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 225
    iput v4, v0, Landroid/os/Message;->what:I

    .line 226
    const-string v1, "getUploadPermission IOException"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 229
    :catch_2
    move-exception v0

    .line 230
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 232
    iput v4, v0, Landroid/os/Message;->what:I

    .line 233
    const-string v1, "getUploadPermission JSONException"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 236
    :catch_3
    move-exception v0

    .line 237
    invoke-virtual {v0}, Lcom/tencent/open/NetworkUnavailableException;->printStackTrace()V

    .line 238
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 239
    iput v4, v0, Landroid/os/Message;->what:I

    .line 240
    const-string v1, "getUploadPermission NetworkUnavailableException"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 243
    :catch_4
    move-exception v0

    .line 244
    invoke-virtual {v0}, Lcom/tencent/open/HttpStatusException;->printStackTrace()V

    .line 245
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 246
    iput v4, v0, Landroid/os/Message;->what:I

    .line 247
    const-string v1, "getUploadPermission HttpStatusException"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun$2;->this$0:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    #getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
