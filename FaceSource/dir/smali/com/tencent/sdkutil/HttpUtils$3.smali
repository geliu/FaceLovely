.class Lcom/tencent/sdkutil/HttpUtils$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/HttpUtils;

.field final synthetic val$JScallback:Ljava/lang/String;

.field final synthetic val$MessageJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/HttpUtils;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tencent/sdkutil/HttpUtils$3;->this$0:Lcom/tencent/sdkutil/HttpUtils;

    iput-object p2, p0, Lcom/tencent/sdkutil/HttpUtils$3;->val$MessageJson:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/tencent/sdkutil/HttpUtils$3;->val$JScallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batchSaved(ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public saved(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 258
    const-string v0, ""

    .line 259
    iget-object v0, p0, Lcom/tencent/sdkutil/HttpUtils$3;->val$MessageJson:Lorg/json/JSONObject;

    .line 261
    if-nez p1, :cond_0

    .line 263
    :try_start_0
    const-string v1, "ImageLocalPath"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "compress_ret"

    const-string v2, "compress_success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :goto_0
    const-string v1, "checkedflag"

    const-string v2, "checked"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$3;->this$0:Lcom/tencent/sdkutil/HttpUtils;

    #getter for: Lcom/tencent/sdkutil/HttpUtils;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/sdkutil/HttpUtils;->access$000(Lcom/tencent/sdkutil/HttpUtils;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "file:///android_asset/tencent/js/tencent.html"

    invoke-static {v1, v2}, Lcom/tencent/jsutil/JsBridge;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/jsutil/JsBridge;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$3;->val$JScallback:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    :goto_1
    return-void

    .line 268
    :cond_0
    const-string v1, "compress_ret"

    const-string v2, "compress_fail"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "HttpUtils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
