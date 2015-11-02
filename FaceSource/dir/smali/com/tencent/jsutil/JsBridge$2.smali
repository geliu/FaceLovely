.class Lcom/tencent/jsutil/JsBridge$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/JsBridge;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/JsBridge;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/jsutil/JsBridge$2;->this$0:Lcom/tencent/jsutil/JsBridge;

    iput-object p2, p0, Lcom/tencent/jsutil/JsBridge$2;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge$2;->this$0:Lcom/tencent/jsutil/JsBridge;

    #getter for: Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I
    invoke-static {v0}, Lcom/tencent/jsutil/JsBridge;->access$100(Lcom/tencent/jsutil/JsBridge;)I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    const-string v0, "javascript:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge$2;->val$method:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    .line 257
    :goto_0
    iget-object v3, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 260
    iget-object v3, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_1
    iget-object v3, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 266
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v3

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/jsutil/JsBridge$2;->this$0:Lcom/tencent/jsutil/JsBridge;

    iget-object v5, p0, Lcom/tencent/jsutil/JsBridge$2;->val$params:[Ljava/lang/String;

    aget-object v5, v5, v0

    #calls: Lcom/tencent/jsutil/JsBridge;->transSpec(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/tencent/jsutil/JsBridge;->access$200(Lcom/tencent/jsutil/JsBridge;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 270
    :cond_2
    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v0, "JsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excuteMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 274
    iput v1, v0, Landroid/os/Message;->what:I

    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge$2;->this$0:Lcom/tencent/jsutil/JsBridge;

    iget-object v1, v1, Lcom/tencent/jsutil/JsBridge;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method
