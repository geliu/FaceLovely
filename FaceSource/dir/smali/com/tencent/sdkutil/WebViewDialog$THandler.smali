.class Lcom/tencent/sdkutil/WebViewDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field private mL:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;


# direct methods
.method public constructor <init>(Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    iput-object p1, p0, Lcom/tencent/sdkutil/WebViewDialog$THandler;->mL:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog$THandler;->mL:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->access$000(Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$THandler;->mL:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->onCancel()V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/WebViewDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/sdkutil/WebViewDialog;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/tencent/sdkutil/WebViewDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/sdkutil/WebViewDialog;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
