.class Lcom/tencent/sdkutil/AsynLoadImg$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/AsynLoadImg;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/AsynLoadImg;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v0, "AsynLoadImg"

    const-string v2, "saveFileRunnable:"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->imgUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/sdkutil/AsynLoadImg;->access$100(Lcom/tencent/sdkutil/AsynLoadImg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/sdkutil/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share_qq_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/sdkutil/AsynLoadImg;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->messageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/tencent/sdkutil/AsynLoadImg;->access$300(Lcom/tencent/sdkutil/AsynLoadImg;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 165
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exists: time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->startTime:J
    invoke-static {v5}, Lcom/tencent/sdkutil/AsynLoadImg;->access$400(Lcom/tencent/sdkutil/AsynLoadImg;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/sdkutil/AsynLoadImg;->access$300(Lcom/tencent/sdkutil/AsynLoadImg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->imgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/sdkutil/AsynLoadImg;->access$100(Lcom/tencent/sdkutil/AsynLoadImg;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/sdkutil/AsynLoadImg;->getbitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_1

    .line 171
    iget-object v5, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    invoke-virtual {v5, v3, v0}, Lcom/tencent/sdkutil/AsynLoadImg;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 175
    :goto_1
    if-eqz v0, :cond_2

    .line 176
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 177
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    :goto_2
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not exists: download time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/sdkutil/AsynLoadImg$2;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->startTime:J
    invoke-static {v5}, Lcom/tencent/sdkutil/AsynLoadImg;->access$400(Lcom/tencent/sdkutil/AsynLoadImg;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "AsynLoadImg"

    const-string v3, "saveFileRunnable:get bmp fail---"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 179
    :cond_2
    const/4 v0, 0x1

    iput v0, v4, Landroid/os/Message;->arg1:I

    goto :goto_2
.end method
