.class Lcom/tencent/sdkutil/PKDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field private mL:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;


# direct methods
.method public constructor <init>(Lcom/tencent/sdkutil/PKDialog$OnTimeListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 388
    iput-object p1, p0, Lcom/tencent/sdkutil/PKDialog$THandler;->mL:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    .line 389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 395
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog$THandler;->mL:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/PKDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/sdkutil/PKDialog$OnTimeListener;->access$700(Lcom/tencent/sdkutil/PKDialog$OnTimeListener;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog$THandler;->mL:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/PKDialog$OnTimeListener;->onCancel()V

    goto :goto_0

    .line 405
    :pswitch_3
    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/PKDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/sdkutil/PKDialog;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :pswitch_4
    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/tencent/sdkutil/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/PKDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/sdkutil/PKDialog;->access$900(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
