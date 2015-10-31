.class Lcom/tencent/sdkutil/HttpUtils$2;
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
    .line 212
    iput-object p1, p0, Lcom/tencent/sdkutil/HttpUtils$2;->this$0:Lcom/tencent/sdkutil/HttpUtils;

    iput-object p2, p0, Lcom/tencent/sdkutil/HttpUtils$2;->val$MessageJson:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/tencent/sdkutil/HttpUtils$2;->val$JScallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batchSaved(ILjava/util/ArrayList;)V
    .locals 6
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
    const/4 v0, 0x0

    .line 215
    const-string v1, ""

    .line 216
    iget-object v2, p0, Lcom/tencent/sdkutil/HttpUtils$2;->val$MessageJson:Lorg/json/JSONObject;

    .line 218
    if-nez p1, :cond_2

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 219
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 220
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_1
    const-string v1, "ImageLocalPath"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v0, "compress_ret"

    const-string v1, "compress_success"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :goto_2
    const-string v0, "checkedflag"

    const-string v1, "checked"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    iget-object v0, p0, Lcom/tencent/sdkutil/HttpUtils$2;->this$0:Lcom/tencent/sdkutil/HttpUtils;

    #getter for: Lcom/tencent/sdkutil/HttpUtils;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/sdkutil/HttpUtils;->access$000(Lcom/tencent/sdkutil/HttpUtils;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "file:///android_asset/tencent/js/tencent.html"

    invoke-static {v0, v1}, Lcom/tencent/jsutil/JsBridge;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/jsutil/JsBridge;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/tencent/sdkutil/HttpUtils$2;->val$JScallback:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    :goto_3
    return-void

    .line 229
    :cond_2
    const-string v0, "compress_ret"

    const-string v1, "compress_fail"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    const-string v2, "HttpUtils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public saved(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    return-void
.end method
