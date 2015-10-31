.class Lcom/miantan/myoface/ShareHelperActivity$1;
.super Landroid/os/Handler;
.source "ShareHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/ShareHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 814
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 819
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 872
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 873
    return-void

    .line 822
    :pswitch_1
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 826
    .end local v0           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 830
    .end local v0           #str:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    .end local v0           #str:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    .end local v0           #str:Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    .end local v0           #str:Ljava/lang/String;
    :pswitch_6
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    .end local v0           #str:Ljava/lang/String;
    :pswitch_7
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    .end local v0           #str:Ljava/lang/String;
    :pswitch_8
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/ShareHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 851
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 855
    .end local v0           #str:Ljava/lang/String;
    :pswitch_9
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mViewSending:Landroid/view/View;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$1(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 860
    :pswitch_a
    iget-object v1, p0, Lcom/miantan/myoface/ShareHelperActivity$1;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mViewSending:Landroid/view/View;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$1(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
