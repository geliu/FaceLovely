.class Lcom/miantan/myoface/FeedbackActivity$1;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    .line 609
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f040009

    const v2, 0x7f040006

    const/4 v1, 0x4

    .line 613
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 653
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 654
    return-void

    .line 616
    :pswitch_0
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const-string v1, "\u8bfb\u53d6\u56fe\u7247\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u56fe\u7247"

    #calls: Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const-string v1, "\u4e0a\u4f20\u6210\u529f\uff0c\u611f\u8c22\u60a8\u7684\u53cd\u9988"

    #calls: Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0}, Lcom/miantan/myoface/FeedbackActivity;->finish()V

    .line 622
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0, v2, v3}, Lcom/miantan/myoface/FeedbackActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 625
    :pswitch_2
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const-string v1, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    #calls: Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0}, Lcom/miantan/myoface/FeedbackActivity;->finish()V

    .line 628
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0, v2, v3}, Lcom/miantan/myoface/FeedbackActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 631
    :pswitch_3
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const-string v1, "\u4e0a\u4f20\u592a\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    #calls: Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0}, Lcom/miantan/myoface/FeedbackActivity;->finish()V

    .line 634
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0, v2, v3}, Lcom/miantan/myoface/FeedbackActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 637
    :pswitch_4
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const-string v1, "\u56fe\u7247\u592a\u5927\uff0c\u8bf7\u538b\u7f29\u56fe\u7247\u540e\u91cd\u8bd5"

    #calls: Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0}, Lcom/miantan/myoface/FeedbackActivity;->finish()V

    .line 640
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v0, v2, v3}, Lcom/miantan/myoface/FeedbackActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 644
    :pswitch_5
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 649
    :pswitch_6
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity$1;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    #getter for: Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;
    invoke-static {v0}, Lcom/miantan/myoface/FeedbackActivity;->access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
