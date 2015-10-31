.class final Lcom/tencent/sdkutil/AsynScaleCompressImage$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p2, p0, Lcom/tencent/sdkutil/AsynScaleCompressImage$1;->val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/tencent/sdkutil/AsynScaleCompressImage$1;->val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 65
    iget-object v1, p0, Lcom/tencent/sdkutil/AsynScaleCompressImage$1;->val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
