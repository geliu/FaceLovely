.class Lcom/miantan/myoface/ShareAppActivity$1;
.super Landroid/os/Handler;
.source "ShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/ShareAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareAppActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    .line 277
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 282
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 316
    return-void

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    #calls: Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareAppActivity;->access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    #calls: Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareAppActivity;->access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v0           #str:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    #calls: Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareAppActivity;->access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0           #str:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    #getter for: Lcom/miantan/myoface/ShareAppActivity;->mViewSending:Landroid/view/View;
    invoke-static {v1}, Lcom/miantan/myoface/ShareAppActivity;->access$1(Lcom/miantan/myoface/ShareAppActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    :pswitch_5
    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$1;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    #getter for: Lcom/miantan/myoface/ShareAppActivity;->mViewSending:Landroid/view/View;
    invoke-static {v1}, Lcom/miantan/myoface/ShareAppActivity;->access$1(Lcom/miantan/myoface/ShareAppActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
