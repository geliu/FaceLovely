.class Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;
.super Ljava/lang/Object;
.source "UploadImageTask.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;

    #getter for: Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->access$1(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4, v5}, Lcom/umeng/socialize/facebook/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;

    #getter for: Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->access$2(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v4

    .line 151
    invoke-interface {v4}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 153
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, imgId:Ljava/lang/String;
    new-instance v1, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;

    invoke-direct {v1, v2}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, imageUrlTask:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;
    iget-object v4, p0, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask$1;->this$0:Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;

    #getter for: Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->mUploadListener:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;
    invoke-static {v4}, Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;->access$3(Lcom/umeng/socialize/facebook/controller/net/UploadImageTask;)Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->setUploadListener(Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask$OnUploadListener;)V

    .line 158
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1           #imageUrlTask:Lcom/umeng/socialize/facebook/controller/net/ImageUrlTask;
    .end local v2           #imgId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
