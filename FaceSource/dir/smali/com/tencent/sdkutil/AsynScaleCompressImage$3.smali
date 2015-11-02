.class final Lcom/tencent/sdkutil/AsynScaleCompressImage$3;
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
    .line 115
    iput-object p2, p0, Lcom/tencent/sdkutil/AsynScaleCompressImage$3;->val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/tencent/sdkutil/AsynScaleCompressImage$3;->val$asynLoadImgBack:Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/tencent/sdkutil/AsynLoadImg$AsynLoadImgBack;->batchSaved(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
