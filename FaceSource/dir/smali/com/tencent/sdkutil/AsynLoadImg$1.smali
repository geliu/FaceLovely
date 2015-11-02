.class Lcom/tencent/sdkutil/AsynLoadImg$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/AsynLoadImg;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/AsynLoadImg;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/sdkutil/AsynLoadImg$1;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/tencent/sdkutil/AsynLoadImg$1;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    invoke-virtual {v1, v0}, Lcom/tencent/sdkutil/AsynLoadImg;->setLocalImageLocalPath(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/tencent/sdkutil/AsynLoadImg$1;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->saveCallBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;
    invoke-static {v1}, Lcom/tencent/sdkutil/AsynLoadImg;->access$000(Lcom/tencent/sdkutil/AsynLoadImg;)Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/sdkutil/AsynLoadImg$1;->this$0:Lcom/tencent/sdkutil/AsynLoadImg;

    #getter for: Lcom/tencent/sdkutil/AsynLoadImg;->saveCallBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;
    invoke-static {v0}, Lcom/tencent/sdkutil/AsynLoadImg;->access$000(Lcom/tencent/sdkutil/AsynLoadImg;)Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0
.end method
